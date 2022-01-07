; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_frags.c_frag_append_1_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_frags.c_frag_append_1_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@frchain_now = common dso_local global %struct.TYPE_2__* null, align 8
@frag_now = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @frag_append_1_char(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @frchain_now, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = call i32 @frag_alloc_check(i32* %4)
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @frchain_now, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @obstack_room(i32* %7)
  %9 = icmp sle i32 %8, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @frag_now, align 4
  %12 = call i32 @frag_wane(i32 %11)
  %13 = call i32 @frag_new(i32 0)
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @frchain_now, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @obstack_1grow(i32* %16, i32 %17)
  ret void
}

declare dso_local i32 @frag_alloc_check(i32*) #1

declare dso_local i32 @obstack_room(i32*) #1

declare dso_local i32 @frag_wane(i32) #1

declare dso_local i32 @frag_new(i32) #1

declare dso_local i32 @obstack_1grow(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
