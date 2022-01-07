; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.file_lock = type { i64, i64, i32 }
%struct.nfs_open_context = type { %struct.nfs4_state* }
%struct.nfs4_state = type { i32 }

@NFS4_LOCK_MINTIMEOUT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@F_GETLK = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i32 0, align 4
@ENOLCK = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, %struct.file_lock*)* @nfs4_proc_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_proc_lock(%struct.file* %0, i32 %1, %struct.file_lock* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file_lock*, align 8
  %8 = alloca %struct.nfs_open_context*, align 8
  %9 = alloca %struct.nfs4_state*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.file_lock* %2, %struct.file_lock** %7, align 8
  %12 = load i64, i64* @NFS4_LOCK_MINTIMEOUT, align 8
  store i64 %12, i64* %10, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = call %struct.nfs_open_context* @nfs_file_open_context(%struct.file* %13)
  store %struct.nfs_open_context* %14, %struct.nfs_open_context** %8, align 8
  %15 = load %struct.nfs_open_context*, %struct.nfs_open_context** %8, align 8
  %16 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %15, i32 0, i32 0
  %17 = load %struct.nfs4_state*, %struct.nfs4_state** %16, align 8
  store %struct.nfs4_state* %17, %struct.nfs4_state** %9, align 8
  %18 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %19 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %24 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %133

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @IS_GETLK(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load %struct.nfs4_state*, %struct.nfs4_state** %9, align 8
  %36 = icmp ne %struct.nfs4_state* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.nfs4_state*, %struct.nfs4_state** %9, align 8
  %39 = load i32, i32* @F_GETLK, align 4
  %40 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %41 = call i32 @nfs4_proc_getlk(%struct.nfs4_state* %38, i32 %39, %struct.file_lock* %40)
  store i32 %41, i32* %4, align 4
  br label %133

42:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %133

43:                                               ; preds = %30
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @IS_SETLK(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @IS_SETLKW(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %133

54:                                               ; preds = %47, %43
  %55 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %56 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @F_UNLCK, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load %struct.nfs4_state*, %struct.nfs4_state** %9, align 8
  %62 = icmp ne %struct.nfs4_state* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.nfs4_state*, %struct.nfs4_state** %9, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %67 = call i32 @nfs4_proc_unlck(%struct.nfs4_state* %64, i32 %65, %struct.file_lock* %66)
  store i32 %67, i32* %4, align 4
  br label %133

68:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %133

69:                                               ; preds = %54
  %70 = load %struct.nfs4_state*, %struct.nfs4_state** %9, align 8
  %71 = icmp eq %struct.nfs4_state* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* @ENOLCK, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %133

75:                                               ; preds = %69
  %76 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %77 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @F_UNLCK, align 4
  %80 = or i32 129, %79
  %81 = and i32 %78, %80
  switch i32 %81, label %104 [
    i32 129, label %82
    i32 128, label %93
  ]

82:                                               ; preds = %75
  %83 = load %struct.file*, %struct.file** %5, align 8
  %84 = getelementptr inbounds %struct.file, %struct.file* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @FMODE_READ, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %82
  %90 = load i32, i32* @EBADF, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %133

92:                                               ; preds = %82
  br label %104

93:                                               ; preds = %75
  %94 = load %struct.file*, %struct.file** %5, align 8
  %95 = getelementptr inbounds %struct.file, %struct.file* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @FMODE_WRITE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %93
  %101 = load i32, i32* @EBADF, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %133

103:                                              ; preds = %93
  br label %104

104:                                              ; preds = %103, %75, %92
  br label %105

105:                                              ; preds = %128, %104
  %106 = load %struct.nfs4_state*, %struct.nfs4_state** %9, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %109 = call i32 @nfs4_proc_setlk(%struct.nfs4_state* %106, i32 %107, %struct.file_lock* %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @EAGAIN, align 4
  %112 = sub nsw i32 0, %111
  %113 = icmp ne i32 %110, %112
  br i1 %113, label %118, label %114

114:                                              ; preds = %105
  %115 = load i32, i32* %6, align 4
  %116 = call i64 @IS_SETLK(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %114, %105
  br label %131

119:                                              ; preds = %114
  %120 = load i64, i64* %10, align 8
  %121 = call i64 @nfs4_set_lock_task_retry(i64 %120)
  store i64 %121, i64* %10, align 8
  %122 = load i32, i32* @ERESTARTSYS, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %11, align 4
  %124 = call i64 (...) @signalled()
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  br label %131

127:                                              ; preds = %119
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %11, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %105, label %131

131:                                              ; preds = %128, %126, %118
  %132 = load i32, i32* %11, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %131, %100, %89, %72, %68, %63, %51, %42, %37, %27
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local %struct.nfs_open_context* @nfs_file_open_context(%struct.file*) #1

declare dso_local i64 @IS_GETLK(i32) #1

declare dso_local i32 @nfs4_proc_getlk(%struct.nfs4_state*, i32, %struct.file_lock*) #1

declare dso_local i64 @IS_SETLK(i32) #1

declare dso_local i64 @IS_SETLKW(i32) #1

declare dso_local i32 @nfs4_proc_unlck(%struct.nfs4_state*, i32, %struct.file_lock*) #1

declare dso_local i32 @nfs4_proc_setlk(%struct.nfs4_state*, i32, %struct.file_lock*) #1

declare dso_local i64 @nfs4_set_lock_task_retry(i64) #1

declare dso_local i64 @signalled(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
