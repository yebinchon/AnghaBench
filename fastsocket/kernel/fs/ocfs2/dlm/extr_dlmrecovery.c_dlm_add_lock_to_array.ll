; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_add_lock_to_array.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_add_lock_to_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lock = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.dlm_migratable_lockres = type { i32, i32, %struct.dlm_migratable_lock* }
%struct.dlm_migratable_lock = type { i64, i32, i32, i32, i32, i32, i32 }

@LKM_EXMODE = common dso_local global i64 0, align 8
@LKM_PRMODE = common dso_local global i64 0, align 8
@DLM_LVB_LEN = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"mismatched lvbs!\0A\00", align 1
@DLM_MAX_MIGRATABLE_LOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_lock*, %struct.dlm_migratable_lockres*, i32)* @dlm_add_lock_to_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_add_lock_to_array(%struct.dlm_lock* %0, %struct.dlm_migratable_lockres* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dlm_lock*, align 8
  %6 = alloca %struct.dlm_migratable_lockres*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dlm_migratable_lock*, align 8
  %9 = alloca i32, align 4
  store %struct.dlm_lock* %0, %struct.dlm_lock** %5, align 8
  store %struct.dlm_migratable_lockres* %1, %struct.dlm_migratable_lockres** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %6, align 8
  %11 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  %13 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %6, align 8
  %14 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %13, i32 0, i32 2
  %15 = load %struct.dlm_migratable_lock*, %struct.dlm_migratable_lock** %14, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.dlm_migratable_lock, %struct.dlm_migratable_lock* %15, i64 %17
  store %struct.dlm_migratable_lock* %18, %struct.dlm_migratable_lock** %8, align 8
  %19 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %20 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dlm_migratable_lock*, %struct.dlm_migratable_lock** %8, align 8
  %24 = getelementptr inbounds %struct.dlm_migratable_lock, %struct.dlm_migratable_lock* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %26 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.dlm_migratable_lock*, %struct.dlm_migratable_lock** %8, align 8
  %30 = getelementptr inbounds %struct.dlm_migratable_lock, %struct.dlm_migratable_lock* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %32 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.dlm_migratable_lock*, %struct.dlm_migratable_lock** %8, align 8
  %36 = getelementptr inbounds %struct.dlm_migratable_lock, %struct.dlm_migratable_lock* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  %37 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %38 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dlm_migratable_lock*, %struct.dlm_migratable_lock** %8, align 8
  %42 = getelementptr inbounds %struct.dlm_migratable_lock, %struct.dlm_migratable_lock* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.dlm_migratable_lock*, %struct.dlm_migratable_lock** %8, align 8
  %45 = getelementptr inbounds %struct.dlm_migratable_lock, %struct.dlm_migratable_lock* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %47 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = icmp ne %struct.TYPE_3__* %48, null
  br i1 %49, label %50, label %113

50:                                               ; preds = %3
  %51 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %52 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.dlm_migratable_lock*, %struct.dlm_migratable_lock** %8, align 8
  %57 = getelementptr inbounds %struct.dlm_migratable_lock, %struct.dlm_migratable_lock* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.dlm_migratable_lock*, %struct.dlm_migratable_lock** %8, align 8
  %59 = getelementptr inbounds %struct.dlm_migratable_lock, %struct.dlm_migratable_lock* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @LKM_EXMODE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %50
  %64 = load %struct.dlm_migratable_lock*, %struct.dlm_migratable_lock** %8, align 8
  %65 = getelementptr inbounds %struct.dlm_migratable_lock, %struct.dlm_migratable_lock* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @LKM_PRMODE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %112

69:                                               ; preds = %63, %50
  %70 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %6, align 8
  %71 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dlm_lvb_is_empty(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %101, label %75

75:                                               ; preds = %69
  %76 = load %struct.dlm_migratable_lock*, %struct.dlm_migratable_lock** %8, align 8
  %77 = getelementptr inbounds %struct.dlm_migratable_lock, %struct.dlm_migratable_lock* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @LKM_EXMODE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %93, label %81

81:                                               ; preds = %75
  %82 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %6, align 8
  %83 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %86 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %85, i32 0, i32 1
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @DLM_LVB_LEN, align 4
  %91 = call i64 @memcmp(i32 %84, i32 %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %81, %75
  %94 = load i32, i32* @ML_ERROR, align 4
  %95 = call i32 @mlog(i32 %94, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %96 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %97 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @dlm_print_one_lock_resource(i32 %98)
  %100 = call i32 (...) @BUG()
  br label %101

101:                                              ; preds = %93, %81, %69
  %102 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %6, align 8
  %103 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %106 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %105, i32 0, i32 1
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @DLM_LVB_LEN, align 4
  %111 = call i32 @memcpy(i32 %104, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %101, %63
  br label %113

113:                                              ; preds = %112, %3
  %114 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %115 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.dlm_migratable_lock*, %struct.dlm_migratable_lock** %8, align 8
  %119 = getelementptr inbounds %struct.dlm_migratable_lock, %struct.dlm_migratable_lock* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 4
  %120 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %6, align 8
  %121 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 8
  %124 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %6, align 8
  %125 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @DLM_MAX_MIGRATABLE_LOCKS, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %113
  store i32 1, i32* %4, align 4
  br label %131

130:                                              ; preds = %113
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %130, %129
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @dlm_lvb_is_empty(i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local i32 @dlm_print_one_lock_resource(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
