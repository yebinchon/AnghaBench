; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_archures.c_bfd_arch_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_archures.c_bfd_arch_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, %struct.TYPE_3__* }

@bfd_archures_list = common dso_local global %struct.TYPE_3__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @bfd_arch_list() #0 {
  %1 = alloca i8**, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_3__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %2, align 4
  %9 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @bfd_archures_list, align 8
  store %struct.TYPE_3__** %9, %struct.TYPE_3__*** %5, align 8
  br label %10

10:                                               ; preds = %28, %0
  %11 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %7, align 8
  br label %17

17:                                               ; preds = %23, %14
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = icmp ne %struct.TYPE_3__* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i32, i32* %2, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %20
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %7, align 8
  br label %17

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %29, i32 1
  store %struct.TYPE_3__** %30, %struct.TYPE_3__*** %5, align 8
  br label %10

31:                                               ; preds = %10
  %32 = load i32, i32* %2, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i8** @bfd_malloc(i32 %37)
  store i8** %38, i8*** %4, align 8
  %39 = load i8**, i8*** %4, align 8
  %40 = icmp eq i8** %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i8** null, i8*** %1, align 8
  br label %73

42:                                               ; preds = %31
  %43 = load i8**, i8*** %4, align 8
  store i8** %43, i8*** %3, align 8
  %44 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @bfd_archures_list, align 8
  store %struct.TYPE_3__** %44, %struct.TYPE_3__*** %5, align 8
  br label %45

45:                                               ; preds = %67, %42
  %46 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = icmp ne %struct.TYPE_3__* %47, null
  br i1 %48, label %49, label %70

49:                                               ; preds = %45
  %50 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  store %struct.TYPE_3__* %51, %struct.TYPE_3__** %8, align 8
  br label %52

52:                                               ; preds = %62, %49
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %54 = icmp ne %struct.TYPE_3__* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i8**, i8*** %3, align 8
  store i8* %58, i8** %59, align 8
  %60 = load i8**, i8*** %3, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i32 1
  store i8** %61, i8*** %3, align 8
  br label %62

62:                                               ; preds = %55
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  store %struct.TYPE_3__* %65, %struct.TYPE_3__** %8, align 8
  br label %52

66:                                               ; preds = %52
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %68, i32 1
  store %struct.TYPE_3__** %69, %struct.TYPE_3__*** %5, align 8
  br label %45

70:                                               ; preds = %45
  %71 = load i8**, i8*** %3, align 8
  store i8* null, i8** %71, align 8
  %72 = load i8**, i8*** %4, align 8
  store i8** %72, i8*** %1, align 8
  br label %73

73:                                               ; preds = %70, %41
  %74 = load i8**, i8*** %1, align 8
  ret i8** %74
}

declare dso_local i8** @bfd_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
