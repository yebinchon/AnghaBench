; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libuutil/common/extr_uu_list.c_uu_list_teardown.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libuutil/common/extr_uu_list.c_uu_list_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [45 x i8] c"uu_list_teardown(%p, %p): unexpected cookie\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @uu_list_teardown(%struct.TYPE_5__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8** %1, i8*** %4, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load i8**, i8*** %4, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = bitcast %struct.TYPE_5__* %15 to i8*
  %17 = load i8**, i8*** %4, align 8
  %18 = bitcast i8** %17 to i8*
  %19 = call i32 @uu_panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %18)
  br label %20

20:                                               ; preds = %14, %10, %2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = call i8* @uu_list_first(%struct.TYPE_5__* %21)
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @uu_list_remove(%struct.TYPE_5__* %26, i8* %27)
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i8*, i8** %5, align 8
  ret i8* %30
}

declare dso_local i32 @uu_panic(i8*, i8*, i8*) #1

declare dso_local i8* @uu_list_first(%struct.TYPE_5__*) #1

declare dso_local i32 @uu_list_remove(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
