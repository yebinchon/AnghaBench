; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_strtab.c_strtab_copyin.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_strtab.c_strtab_copyin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*, i64)* @strtab_copyin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @strtab_copyin(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = sub i64 %12, 1
  store i64 %13, i64* %7, align 8
  br label %14

14:                                               ; preds = %37, %3
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %72

17:                                               ; preds = %14
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = icmp eq i64 %20, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %17
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = call i32 @strtab_grow(%struct.TYPE_4__* %33)
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %7, align 8
  br label %37

37:                                               ; preds = %32, %17
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %47, %50
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i64 @MIN(i64 %52, i64 %53)
  store i64 %54, i64* %9, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @bcopy(i8* %55, i64 %58, i64 %59)
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, %61
  store i64 %65, i64* %63, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 %66
  store i8* %68, i8** %5, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %6, align 8
  %71 = sub i64 %70, %69
  store i64 %71, i64* %6, align 8
  br label %14

72:                                               ; preds = %14
  ret void
}

declare dso_local i32 @strtab_grow(%struct.TYPE_4__*) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @bcopy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
