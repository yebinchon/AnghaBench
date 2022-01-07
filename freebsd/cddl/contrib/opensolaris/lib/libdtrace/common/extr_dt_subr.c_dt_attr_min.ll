; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_subr.c_dt_attr_min.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_subr.c_dt_attr_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dt_attr_min(%struct.TYPE_5__* noalias sret %0, %struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %1, %struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %2) #0 {
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 2
  %7 = load i8*, i8** %6, align 8
  %8 = call i8* @MIN(i8* %5, i8* %7)
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 2
  store i8* %8, i8** %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = call i8* @MIN(i8* %11, i8* %13)
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 1
  store i8* %14, i8** %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @MIN(i8* %17, i8* %19)
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  ret void
}

declare dso_local i8* @MIN(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
