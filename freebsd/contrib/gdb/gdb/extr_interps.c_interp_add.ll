; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_interps.c_interp_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_interps.c_interp_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interp = type { %struct.interp*, i32 }

@interpreter_initialized = common dso_local global i32 0, align 4
@interp_list = common dso_local global %struct.interp* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @interp_add(%struct.interp* %0) #0 {
  %2 = alloca %struct.interp*, align 8
  store %struct.interp* %0, %struct.interp** %2, align 8
  %3 = load i32, i32* @interpreter_initialized, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32 (...) @initialize_interps()
  br label %7

7:                                                ; preds = %5, %1
  %8 = load %struct.interp*, %struct.interp** %2, align 8
  %9 = getelementptr inbounds %struct.interp, %struct.interp* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32* @interp_lookup(i32 %10)
  %12 = icmp eq i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @gdb_assert(i32 %13)
  %15 = load %struct.interp*, %struct.interp** @interp_list, align 8
  %16 = load %struct.interp*, %struct.interp** %2, align 8
  %17 = getelementptr inbounds %struct.interp, %struct.interp* %16, i32 0, i32 0
  store %struct.interp* %15, %struct.interp** %17, align 8
  %18 = load %struct.interp*, %struct.interp** %2, align 8
  store %struct.interp* %18, %struct.interp** @interp_list, align 8
  ret void
}

declare dso_local i32 @initialize_interps(...) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32* @interp_lookup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
