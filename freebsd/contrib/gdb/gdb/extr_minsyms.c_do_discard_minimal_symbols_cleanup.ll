; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_minsyms.c_do_discard_minimal_symbols_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_minsyms.c_do_discard_minimal_symbols_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msym_bunch = type { %struct.msym_bunch* }

@msym_bunch = common dso_local global %struct.msym_bunch* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do_discard_minimal_symbols_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_discard_minimal_symbols_cleanup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.msym_bunch*, align 8
  store i8* %0, i8** %2, align 8
  br label %4

4:                                                ; preds = %7, %1
  %5 = load %struct.msym_bunch*, %struct.msym_bunch** @msym_bunch, align 8
  %6 = icmp ne %struct.msym_bunch* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = load %struct.msym_bunch*, %struct.msym_bunch** @msym_bunch, align 8
  %9 = getelementptr inbounds %struct.msym_bunch, %struct.msym_bunch* %8, i32 0, i32 0
  %10 = load %struct.msym_bunch*, %struct.msym_bunch** %9, align 8
  store %struct.msym_bunch* %10, %struct.msym_bunch** %3, align 8
  %11 = load %struct.msym_bunch*, %struct.msym_bunch** @msym_bunch, align 8
  %12 = call i32 @xfree(%struct.msym_bunch* %11)
  %13 = load %struct.msym_bunch*, %struct.msym_bunch** %3, align 8
  store %struct.msym_bunch* %13, %struct.msym_bunch** @msym_bunch, align 8
  br label %4

14:                                               ; preds = %4
  ret void
}

declare dso_local i32 @xfree(%struct.msym_bunch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
