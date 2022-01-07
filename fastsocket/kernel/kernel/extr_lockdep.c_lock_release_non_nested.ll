; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_lockdep.c_lock_release_non_nested.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_lockdep.c_lock_release_non_nested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, %struct.held_lock*, i32 }
%struct.held_lock = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.lockdep_map*, i32 }
%struct.lockdep_map = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.lockdep_map*, i64)* @lock_release_non_nested to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock_release_non_nested(%struct.task_struct* %0, %struct.lockdep_map* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.lockdep_map*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.held_lock*, align 8
  %9 = alloca %struct.held_lock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store %struct.lockdep_map* %1, %struct.lockdep_map** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @DEBUG_LOCKS_WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %156

22:                                               ; preds = %3
  store %struct.held_lock* null, %struct.held_lock** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sub i32 %23, 1
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %54, %22
  %26 = load i32, i32* %11, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %25
  %29 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %30 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %29, i32 0, i32 1
  %31 = load %struct.held_lock*, %struct.held_lock** %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %31, i64 %33
  store %struct.held_lock* %34, %struct.held_lock** %8, align 8
  %35 = load %struct.held_lock*, %struct.held_lock** %9, align 8
  %36 = icmp ne %struct.held_lock* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %28
  %38 = load %struct.held_lock*, %struct.held_lock** %9, align 8
  %39 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.held_lock*, %struct.held_lock** %8, align 8
  %42 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %57

46:                                               ; preds = %37, %28
  %47 = load %struct.held_lock*, %struct.held_lock** %8, align 8
  %48 = load %struct.lockdep_map*, %struct.lockdep_map** %6, align 8
  %49 = call i64 @match_held_lock(%struct.held_lock* %47, %struct.lockdep_map* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %62

52:                                               ; preds = %46
  %53 = load %struct.held_lock*, %struct.held_lock** %8, align 8
  store %struct.held_lock* %53, %struct.held_lock** %9, align 8
  br label %54

54:                                               ; preds = %52
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %11, align 4
  br label %25

57:                                               ; preds = %45, %25
  %58 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %59 = load %struct.lockdep_map*, %struct.lockdep_map** %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @print_unlock_inbalance_bug(%struct.task_struct* %58, %struct.lockdep_map* %59, i64 %60)
  store i32 %61, i32* %4, align 4
  br label %156

62:                                               ; preds = %51
  %63 = load %struct.held_lock*, %struct.held_lock** %8, align 8
  %64 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %63, i32 0, i32 8
  %65 = load %struct.lockdep_map*, %struct.lockdep_map** %64, align 8
  %66 = load %struct.lockdep_map*, %struct.lockdep_map** %6, align 8
  %67 = icmp eq %struct.lockdep_map* %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.held_lock*, %struct.held_lock** %8, align 8
  %70 = call i32 @lock_release_holdtime(%struct.held_lock* %69)
  br label %71

71:                                               ; preds = %68, %62
  %72 = load %struct.held_lock*, %struct.held_lock** %8, align 8
  %73 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %71
  %77 = load %struct.held_lock*, %struct.held_lock** %8, align 8
  %78 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, -1
  store i64 %80, i64* %78, align 8
  %81 = load %struct.held_lock*, %struct.held_lock** %8, align 8
  %82 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  store i32 1, i32* %4, align 4
  br label %156

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %71
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %90 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.held_lock*, %struct.held_lock** %8, align 8
  %92 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %91, i32 0, i32 9
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %95 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %141, %87
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %102, label %144

102:                                              ; preds = %98
  %103 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %104 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %103, i32 0, i32 1
  %105 = load %struct.held_lock*, %struct.held_lock** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %105, i64 %107
  store %struct.held_lock* %108, %struct.held_lock** %8, align 8
  %109 = load %struct.held_lock*, %struct.held_lock** %8, align 8
  %110 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %109, i32 0, i32 8
  %111 = load %struct.lockdep_map*, %struct.lockdep_map** %110, align 8
  %112 = load %struct.held_lock*, %struct.held_lock** %8, align 8
  %113 = call %struct.TYPE_2__* @hlock_class(%struct.held_lock* %112)
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.held_lock*, %struct.held_lock** %8, align 8
  %117 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.held_lock*, %struct.held_lock** %8, align 8
  %120 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.held_lock*, %struct.held_lock** %8, align 8
  %123 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.held_lock*, %struct.held_lock** %8, align 8
  %126 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.held_lock*, %struct.held_lock** %8, align 8
  %129 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.held_lock*, %struct.held_lock** %8, align 8
  %132 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.held_lock*, %struct.held_lock** %8, align 8
  %135 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @__lock_acquire(%struct.lockdep_map* %111, i32 %115, i32 %118, i32 %121, i32 %124, i32 %127, i32 %130, i32 %133, i64 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %102
  store i32 0, i32* %4, align 4
  br label %156

140:                                              ; preds = %102
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %11, align 4
  br label %98

144:                                              ; preds = %98
  %145 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %146 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sub i32 %148, 1
  %150 = icmp ne i32 %147, %149
  %151 = zext i1 %150 to i32
  %152 = call i64 @DEBUG_LOCKS_WARN_ON(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %144
  store i32 0, i32* %4, align 4
  br label %156

155:                                              ; preds = %144
  store i32 1, i32* %4, align 4
  br label %156

156:                                              ; preds = %155, %154, %139, %85, %57, %21
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local i64 @DEBUG_LOCKS_WARN_ON(i32) #1

declare dso_local i64 @match_held_lock(%struct.held_lock*, %struct.lockdep_map*) #1

declare dso_local i32 @print_unlock_inbalance_bug(%struct.task_struct*, %struct.lockdep_map*, i64) #1

declare dso_local i32 @lock_release_holdtime(%struct.held_lock*) #1

declare dso_local i32 @__lock_acquire(%struct.lockdep_map*, i32, i32, i32, i32, i32, i32, i32, i64) #1

declare dso_local %struct.TYPE_2__* @hlock_class(%struct.held_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
