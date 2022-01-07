; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_waitq.c_validate_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_waitq.c_validate_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autofs_wait_queue = type { i32 }
%struct.autofs_sb_info = type { i64, i32 }
%struct.qstr = type { i32 }
%struct.dentry = type { i32, %struct.dentry*, i64 }
%struct.autofs_info = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@NFY_NONE = common dso_local global i32 0, align 4
@AUTOFS_INF_EXPIRING = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@NFY_MOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.autofs_wait_queue**, %struct.autofs_sb_info*, %struct.qstr*, %struct.dentry*, i32)* @validate_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_request(%struct.autofs_wait_queue** %0, %struct.autofs_sb_info* %1, %struct.qstr* %2, %struct.dentry* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.autofs_wait_queue**, align 8
  %8 = alloca %struct.autofs_sb_info*, align 8
  %9 = alloca %struct.qstr*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.autofs_wait_queue*, align 8
  %13 = alloca %struct.autofs_info*, align 8
  %14 = alloca %struct.dentry*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.dentry*, align 8
  store %struct.autofs_wait_queue** %0, %struct.autofs_wait_queue*** %7, align 8
  store %struct.autofs_sb_info* %1, %struct.autofs_sb_info** %8, align 8
  store %struct.qstr* %2, %struct.qstr** %9, align 8
  store %struct.dentry* %3, %struct.dentry** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %18 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %130

24:                                               ; preds = %5
  %25 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %26 = load %struct.qstr*, %struct.qstr** %9, align 8
  %27 = call %struct.autofs_wait_queue* @autofs4_find_wait(%struct.autofs_sb_info* %25, %struct.qstr* %26)
  store %struct.autofs_wait_queue* %27, %struct.autofs_wait_queue** %12, align 8
  %28 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %12, align 8
  %29 = icmp ne %struct.autofs_wait_queue* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %12, align 8
  %32 = load %struct.autofs_wait_queue**, %struct.autofs_wait_queue*** %7, align 8
  store %struct.autofs_wait_queue* %31, %struct.autofs_wait_queue** %32, align 8
  store i32 1, i32* %6, align 4
  br label %130

33:                                               ; preds = %24
  %34 = load %struct.autofs_wait_queue**, %struct.autofs_wait_queue*** %7, align 8
  store %struct.autofs_wait_queue* null, %struct.autofs_wait_queue** %34, align 8
  %35 = load %struct.dentry*, %struct.dentry** %10, align 8
  %36 = call %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry* %35)
  store %struct.autofs_info* %36, %struct.autofs_info** %13, align 8
  %37 = load %struct.autofs_info*, %struct.autofs_info** %13, align 8
  %38 = icmp ne %struct.autofs_info* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  store i32 1, i32* %6, align 4
  br label %130

40:                                               ; preds = %33
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @NFY_NONE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %85

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %83, %44
  %46 = load %struct.autofs_info*, %struct.autofs_info** %13, align 8
  %47 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @AUTOFS_INF_EXPIRING, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %84

52:                                               ; preds = %45
  %53 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %54 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* @HZ, align 4
  %57 = sdiv i32 %56, 10
  %58 = call i32 @schedule_timeout_interruptible(i32 %57)
  %59 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %60 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %59, i32 0, i32 1
  %61 = call i64 @mutex_lock_interruptible(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %52
  %64 = load i32, i32* @EINTR, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %130

66:                                               ; preds = %52
  %67 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %68 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @ENOENT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %130

74:                                               ; preds = %66
  %75 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %76 = load %struct.qstr*, %struct.qstr** %9, align 8
  %77 = call %struct.autofs_wait_queue* @autofs4_find_wait(%struct.autofs_sb_info* %75, %struct.qstr* %76)
  store %struct.autofs_wait_queue* %77, %struct.autofs_wait_queue** %12, align 8
  %78 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %12, align 8
  %79 = icmp ne %struct.autofs_wait_queue* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %12, align 8
  %82 = load %struct.autofs_wait_queue**, %struct.autofs_wait_queue*** %7, align 8
  store %struct.autofs_wait_queue* %81, %struct.autofs_wait_queue** %82, align 8
  store i32 1, i32* %6, align 4
  br label %130

83:                                               ; preds = %74
  br label %45

84:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %130

85:                                               ; preds = %40
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @NFY_MOUNT, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %129

89:                                               ; preds = %85
  store %struct.dentry* null, %struct.dentry** %14, align 8
  store i32 1, i32* %15, align 4
  %90 = load %struct.dentry*, %struct.dentry** %10, align 8
  %91 = call i32 @IS_ROOT(%struct.dentry* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %116, label %93

93:                                               ; preds = %89
  %94 = load %struct.dentry*, %struct.dentry** %10, align 8
  %95 = getelementptr inbounds %struct.dentry, %struct.dentry* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %115

98:                                               ; preds = %93
  %99 = load %struct.dentry*, %struct.dentry** %10, align 8
  %100 = call i64 @d_unhashed(%struct.dentry* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %98
  %103 = load %struct.dentry*, %struct.dentry** %10, align 8
  %104 = getelementptr inbounds %struct.dentry, %struct.dentry* %103, i32 0, i32 1
  %105 = load %struct.dentry*, %struct.dentry** %104, align 8
  store %struct.dentry* %105, %struct.dentry** %16, align 8
  %106 = load %struct.dentry*, %struct.dentry** %16, align 8
  %107 = load %struct.dentry*, %struct.dentry** %10, align 8
  %108 = getelementptr inbounds %struct.dentry, %struct.dentry* %107, i32 0, i32 0
  %109 = call %struct.dentry* @d_lookup(%struct.dentry* %106, i32* %108)
  store %struct.dentry* %109, %struct.dentry** %14, align 8
  %110 = load %struct.dentry*, %struct.dentry** %14, align 8
  %111 = icmp ne %struct.dentry* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %102
  %113 = load %struct.dentry*, %struct.dentry** %14, align 8
  store %struct.dentry* %113, %struct.dentry** %10, align 8
  br label %114

114:                                              ; preds = %112, %102
  br label %115

115:                                              ; preds = %114, %98, %93
  br label %116

116:                                              ; preds = %115, %89
  %117 = load %struct.dentry*, %struct.dentry** %10, align 8
  %118 = call i64 @have_submounts(%struct.dentry* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  store i32 0, i32* %15, align 4
  br label %121

121:                                              ; preds = %120, %116
  %122 = load %struct.dentry*, %struct.dentry** %14, align 8
  %123 = icmp ne %struct.dentry* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load %struct.dentry*, %struct.dentry** %14, align 8
  %126 = call i32 @dput(%struct.dentry* %125)
  br label %127

127:                                              ; preds = %124, %121
  %128 = load i32, i32* %15, align 4
  store i32 %128, i32* %6, align 4
  br label %130

129:                                              ; preds = %85
  store i32 1, i32* %6, align 4
  br label %130

130:                                              ; preds = %129, %127, %84, %80, %71, %63, %39, %30, %21
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local %struct.autofs_wait_queue* @autofs4_find_wait(%struct.autofs_sb_info*, %struct.qstr*) #1

declare dso_local %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @IS_ROOT(%struct.dentry*) #1

declare dso_local i64 @d_unhashed(%struct.dentry*) #1

declare dso_local %struct.dentry* @d_lookup(%struct.dentry*, i32*) #1

declare dso_local i64 @have_submounts(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
