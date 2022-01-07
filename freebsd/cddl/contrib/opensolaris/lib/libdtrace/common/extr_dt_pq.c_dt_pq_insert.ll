; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_pq.c_dt_pq_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_pq.c_dt_pq_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i8** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dt_pq_insert(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %9, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %17, align 8
  store i64 %18, i64* %5, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i8**, i8*** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds i8*, i8** %23, i64 %24
  store i8* %20, i8** %25, align 8
  br label %26

26:                                               ; preds = %40, %2
  %27 = load i64, i64* %5, align 8
  %28 = icmp ugt i64 %27, 1
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @dt_pq_getvalue(%struct.TYPE_4__* %30, i64 %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = load i64, i64* %5, align 8
  %35 = udiv i64 %34, 2
  %36 = call i64 @dt_pq_getvalue(%struct.TYPE_4__* %33, i64 %35)
  %37 = icmp slt i64 %32, %36
  br label %38

38:                                               ; preds = %29, %26
  %39 = phi i1 [ false, %26 ], [ %37, %29 ]
  br i1 %39, label %40, label %68

40:                                               ; preds = %38
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i8**, i8*** %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds i8*, i8** %43, i64 %44
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %6, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i8**, i8*** %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = udiv i64 %50, 2
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i8**, i8*** %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = getelementptr inbounds i8*, i8** %56, i64 %57
  store i8* %53, i8** %58, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i8**, i8*** %61, align 8
  %63 = load i64, i64* %5, align 8
  %64 = udiv i64 %63, 2
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  store i8* %59, i8** %65, align 8
  %66 = load i64, i64* %5, align 8
  %67 = udiv i64 %66, 2
  store i64 %67, i64* %5, align 8
  br label %26

68:                                               ; preds = %38
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @dt_pq_getvalue(%struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
