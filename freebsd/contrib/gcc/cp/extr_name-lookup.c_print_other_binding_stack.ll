; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_print_other_binding_stack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_print_other_binding_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp_binding_level = type { %struct.cp_binding_level* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"binding level %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_other_binding_stack(%struct.cp_binding_level* %0) #0 {
  %2 = alloca %struct.cp_binding_level*, align 8
  %3 = alloca %struct.cp_binding_level*, align 8
  store %struct.cp_binding_level* %0, %struct.cp_binding_level** %2, align 8
  %4 = load %struct.cp_binding_level*, %struct.cp_binding_level** %2, align 8
  store %struct.cp_binding_level* %4, %struct.cp_binding_level** %3, align 8
  br label %5

5:                                                ; preds = %17, %1
  %6 = load %struct.cp_binding_level*, %struct.cp_binding_level** %3, align 8
  %7 = call i32 @global_scope_p(%struct.cp_binding_level* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = load i32, i32* @stderr, align 4
  %12 = load %struct.cp_binding_level*, %struct.cp_binding_level** %3, align 8
  %13 = bitcast %struct.cp_binding_level* %12 to i8*
  %14 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load %struct.cp_binding_level*, %struct.cp_binding_level** %3, align 8
  %16 = call i32 @print_binding_level(%struct.cp_binding_level* %15)
  br label %17

17:                                               ; preds = %10
  %18 = load %struct.cp_binding_level*, %struct.cp_binding_level** %3, align 8
  %19 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %18, i32 0, i32 0
  %20 = load %struct.cp_binding_level*, %struct.cp_binding_level** %19, align 8
  store %struct.cp_binding_level* %20, %struct.cp_binding_level** %3, align 8
  br label %5

21:                                               ; preds = %5
  ret void
}

declare dso_local i32 @global_scope_p(%struct.cp_binding_level*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @print_binding_level(%struct.cp_binding_level*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
