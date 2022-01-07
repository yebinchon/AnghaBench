; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_lockdep.c___lock_set_class.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_lockdep.c___lock_set_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, %struct.held_lock*, i32 }
%struct.held_lock = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class = type { i32 }
%struct.lockdep_map = type { i32 }
%struct.lock_class_key = type { i32 }
%struct.TYPE_2__ = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@lock_classes = common dso_local global %struct.lock_class* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lockdep_map*, i8*, %struct.lock_class_key*, i32, i64)* @__lock_set_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__lock_set_class(%struct.lockdep_map* %0, i8* %1, %struct.lock_class_key* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.lockdep_map*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.lock_class_key*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.task_struct*, align 8
  %13 = alloca %struct.held_lock*, align 8
  %14 = alloca %struct.held_lock*, align 8
  %15 = alloca %struct.lock_class*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.lockdep_map* %0, %struct.lockdep_map** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.lock_class_key* %2, %struct.lock_class_key** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %18 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %18, %struct.task_struct** %12, align 8
  %19 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %16, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @DEBUG_LOCKS_WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %152

29:                                               ; preds = %5
  store %struct.held_lock* null, %struct.held_lock** %14, align 8
  %30 = load i32, i32* %16, align 4
  %31 = sub i32 %30, 1
  store i32 %31, i32* %17, align 4
  br label %32

32:                                               ; preds = %61, %29
  %33 = load i32, i32* %17, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %32
  %36 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %37 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %36, i32 0, i32 1
  %38 = load %struct.held_lock*, %struct.held_lock** %37, align 8
  %39 = load i32, i32* %17, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %38, i64 %40
  store %struct.held_lock* %41, %struct.held_lock** %13, align 8
  %42 = load %struct.held_lock*, %struct.held_lock** %14, align 8
  %43 = icmp ne %struct.held_lock* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %35
  %45 = load %struct.held_lock*, %struct.held_lock** %14, align 8
  %46 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.held_lock*, %struct.held_lock** %13, align 8
  %49 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %64

53:                                               ; preds = %44, %35
  %54 = load %struct.held_lock*, %struct.held_lock** %13, align 8
  %55 = load %struct.lockdep_map*, %struct.lockdep_map** %7, align 8
  %56 = call i64 @match_held_lock(%struct.held_lock* %54, %struct.lockdep_map* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %69

59:                                               ; preds = %53
  %60 = load %struct.held_lock*, %struct.held_lock** %13, align 8
  store %struct.held_lock* %60, %struct.held_lock** %14, align 8
  br label %61

61:                                               ; preds = %59
  %62 = load i32, i32* %17, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %17, align 4
  br label %32

64:                                               ; preds = %52, %32
  %65 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %66 = load %struct.lockdep_map*, %struct.lockdep_map** %7, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @print_unlock_inbalance_bug(%struct.task_struct* %65, %struct.lockdep_map* %66, i64 %67)
  store i32 %68, i32* %6, align 4
  br label %152

69:                                               ; preds = %58
  %70 = load %struct.lockdep_map*, %struct.lockdep_map** %7, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load %struct.lock_class_key*, %struct.lock_class_key** %9, align 8
  %73 = call i32 @lockdep_init_map(%struct.lockdep_map* %70, i8* %71, %struct.lock_class_key* %72, i32 0)
  %74 = load %struct.lockdep_map*, %struct.lockdep_map** %7, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call %struct.lock_class* @register_lock_class(%struct.lockdep_map* %74, i32 %75, i32 0)
  store %struct.lock_class* %76, %struct.lock_class** %15, align 8
  %77 = load %struct.lock_class*, %struct.lock_class** %15, align 8
  %78 = load %struct.lock_class*, %struct.lock_class** @lock_classes, align 8
  %79 = ptrtoint %struct.lock_class* %77 to i64
  %80 = ptrtoint %struct.lock_class* %78 to i64
  %81 = sub i64 %79, %80
  %82 = sdiv exact i64 %81, 4
  %83 = add nsw i64 %82, 1
  %84 = trunc i64 %83 to i32
  %85 = load %struct.held_lock*, %struct.held_lock** %13, align 8
  %86 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %17, align 4
  %88 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %89 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.held_lock*, %struct.held_lock** %13, align 8
  %91 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %90, i32 0, i32 10
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %94 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %138, %69
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %16, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %99, label %141

99:                                               ; preds = %95
  %100 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %101 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %100, i32 0, i32 1
  %102 = load %struct.held_lock*, %struct.held_lock** %101, align 8
  %103 = load i32, i32* %17, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %102, i64 %104
  store %struct.held_lock* %105, %struct.held_lock** %13, align 8
  %106 = load %struct.held_lock*, %struct.held_lock** %13, align 8
  %107 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %106, i32 0, i32 9
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.held_lock*, %struct.held_lock** %13, align 8
  %110 = call %struct.TYPE_2__* @hlock_class(%struct.held_lock* %109)
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.held_lock*, %struct.held_lock** %13, align 8
  %114 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %113, i32 0, i32 8
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.held_lock*, %struct.held_lock** %13, align 8
  %117 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.held_lock*, %struct.held_lock** %13, align 8
  %120 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.held_lock*, %struct.held_lock** %13, align 8
  %123 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.held_lock*, %struct.held_lock** %13, align 8
  %126 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.held_lock*, %struct.held_lock** %13, align 8
  %129 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.held_lock*, %struct.held_lock** %13, align 8
  %132 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @__lock_acquire(i32 %108, i32 %112, i32 %115, i32 %118, i32 %121, i32 %124, i32 %127, i32 %130, i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %99
  store i32 0, i32* %6, align 4
  br label %152

137:                                              ; preds = %99
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %17, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %17, align 4
  br label %95

141:                                              ; preds = %95
  %142 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %143 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %16, align 4
  %146 = icmp ne i32 %144, %145
  %147 = zext i1 %146 to i32
  %148 = call i64 @DEBUG_LOCKS_WARN_ON(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %141
  store i32 0, i32* %6, align 4
  br label %152

151:                                              ; preds = %141
  store i32 1, i32* %6, align 4
  br label %152

152:                                              ; preds = %151, %150, %136, %64, %28
  %153 = load i32, i32* %6, align 4
  ret i32 %153
}

declare dso_local i64 @DEBUG_LOCKS_WARN_ON(i32) #1

declare dso_local i64 @match_held_lock(%struct.held_lock*, %struct.lockdep_map*) #1

declare dso_local i32 @print_unlock_inbalance_bug(%struct.task_struct*, %struct.lockdep_map*, i64) #1

declare dso_local i32 @lockdep_init_map(%struct.lockdep_map*, i8*, %struct.lock_class_key*, i32) #1

declare dso_local %struct.lock_class* @register_lock_class(%struct.lockdep_map*, i32, i32) #1

declare dso_local i32 @__lock_acquire(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @hlock_class(%struct.held_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
