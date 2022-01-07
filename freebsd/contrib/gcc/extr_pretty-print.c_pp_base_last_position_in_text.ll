; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_pretty-print.c_pp_base_last_position_in_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_pretty-print.c_pp_base_last_position_in_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.obstack* }
%struct.obstack = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pp_base_last_position_in_text(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.obstack*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i8* null, i8** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.obstack*, %struct.obstack** %8, align 8
  store %struct.obstack* %9, %struct.obstack** %4, align 8
  %10 = load %struct.obstack*, %struct.obstack** %4, align 8
  %11 = call i64 @obstack_base(%struct.obstack* %10)
  %12 = load %struct.obstack*, %struct.obstack** %4, align 8
  %13 = call i64 @obstack_next_free(%struct.obstack* %12)
  %14 = icmp ne i64 %11, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.obstack*, %struct.obstack** %4, align 8
  %17 = call i64 @obstack_next_free(%struct.obstack* %16)
  %18 = inttoptr i64 %17 to i8*
  %19 = getelementptr inbounds i8, i8* %18, i64 -1
  store i8* %19, i8** %3, align 8
  br label %20

20:                                               ; preds = %15, %1
  %21 = load i8*, i8** %3, align 8
  ret i8* %21
}

declare dso_local i64 @obstack_base(%struct.obstack*) #1

declare dso_local i64 @obstack_next_free(%struct.obstack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
