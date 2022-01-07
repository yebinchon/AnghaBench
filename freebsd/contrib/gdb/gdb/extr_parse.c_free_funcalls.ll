; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_parse.c_free_funcalls.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_parse.c_free_funcalls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.funcall = type { %struct.funcall* }

@funcall_chain = common dso_local global %struct.funcall* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @free_funcalls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_funcalls(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.funcall*, align 8
  %4 = alloca %struct.funcall*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load %struct.funcall*, %struct.funcall** @funcall_chain, align 8
  store %struct.funcall* %5, %struct.funcall** %3, align 8
  br label %6

6:                                                ; preds = %15, %1
  %7 = load %struct.funcall*, %struct.funcall** %3, align 8
  %8 = icmp ne %struct.funcall* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = load %struct.funcall*, %struct.funcall** %3, align 8
  %11 = getelementptr inbounds %struct.funcall, %struct.funcall* %10, i32 0, i32 0
  %12 = load %struct.funcall*, %struct.funcall** %11, align 8
  store %struct.funcall* %12, %struct.funcall** %4, align 8
  %13 = load %struct.funcall*, %struct.funcall** %3, align 8
  %14 = call i32 @xfree(%struct.funcall* %13)
  br label %15

15:                                               ; preds = %9
  %16 = load %struct.funcall*, %struct.funcall** %4, align 8
  store %struct.funcall* %16, %struct.funcall** %3, align 8
  br label %6

17:                                               ; preds = %6
  ret void
}

declare dso_local i32 @xfree(%struct.funcall*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
