; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_toplev.c_pop_srcloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_toplev.c_pop_srcloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_stack = type { %struct.file_stack*, i32 }

@input_file_stack_restored = common dso_local global i32 0, align 4
@input_file_stack_tick = common dso_local global i32 0, align 4
@INPUT_FILE_STACK_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"GCC supports only %d input file changes\00", align 1
@input_file_stack = common dso_local global %struct.file_stack* null, align 8
@input_location = common dso_local global i32 0, align 4
@fs_p = common dso_local global i32 0, align 4
@heap = common dso_local global i32 0, align 4
@input_file_stack_history = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pop_srcloc() #0 {
  %1 = alloca %struct.file_stack*, align 8
  %2 = load i32, i32* @input_file_stack_restored, align 4
  %3 = icmp ne i32 %2, 0
  %4 = xor i1 %3, true
  %5 = zext i1 %4 to i32
  %6 = call i32 @gcc_assert(i32 %5)
  %7 = load i32, i32* @input_file_stack_tick, align 4
  %8 = load i32, i32* @INPUT_FILE_STACK_BITS, align 4
  %9 = shl i32 1, %8
  %10 = sub i32 %9, 1
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = load i32, i32* @input_file_stack_tick, align 4
  %14 = call i32 @sorry(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %12, %0
  %16 = load %struct.file_stack*, %struct.file_stack** @input_file_stack, align 8
  store %struct.file_stack* %16, %struct.file_stack** %1, align 8
  %17 = load %struct.file_stack*, %struct.file_stack** %1, align 8
  %18 = getelementptr inbounds %struct.file_stack, %struct.file_stack* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* @input_location, align 4
  %20 = load %struct.file_stack*, %struct.file_stack** %1, align 8
  %21 = getelementptr inbounds %struct.file_stack, %struct.file_stack* %20, i32 0, i32 0
  %22 = load %struct.file_stack*, %struct.file_stack** %21, align 8
  store %struct.file_stack* %22, %struct.file_stack** @input_file_stack, align 8
  %23 = load i32, i32* @input_file_stack_tick, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @input_file_stack_tick, align 4
  %25 = load i32, i32* @fs_p, align 4
  %26 = load i32, i32* @heap, align 4
  %27 = load i32, i32* @input_file_stack_history, align 4
  %28 = load %struct.file_stack*, %struct.file_stack** @input_file_stack, align 8
  %29 = call i32 @VEC_safe_push(i32 %25, i32 %26, i32 %27, %struct.file_stack* %28)
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @sorry(i8*, i32) #1

declare dso_local i32 @VEC_safe_push(i32, i32, i32, %struct.file_stack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
