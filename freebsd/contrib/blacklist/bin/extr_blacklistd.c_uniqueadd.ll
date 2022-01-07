; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/blacklist/bin/extr_blacklistd.c_uniqueadd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/blacklist/bin/extr_blacklistd.c_uniqueadd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf = type { i8* }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Can't allocate for rule list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.conf***, i64*, i64*, %struct.conf*)* @uniqueadd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uniqueadd(%struct.conf*** %0, i64* %1, i64* %2, %struct.conf* %3) #0 {
  %5 = alloca %struct.conf***, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.conf*, align 8
  %9 = alloca %struct.conf**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.conf*** %0, %struct.conf**** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store %struct.conf* %3, %struct.conf** %8, align 8
  %12 = load %struct.conf***, %struct.conf**** %5, align 8
  %13 = load %struct.conf**, %struct.conf*** %12, align 8
  store %struct.conf** %13, %struct.conf*** %9, align 8
  %14 = load %struct.conf*, %struct.conf** %8, align 8
  %15 = getelementptr inbounds %struct.conf, %struct.conf* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %77

22:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  br label %23

23:                                               ; preds = %42, %22
  %24 = load i64, i64* %10, align 8
  %25 = load i64*, i64** %6, align 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %23
  %29 = load %struct.conf**, %struct.conf*** %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds %struct.conf*, %struct.conf** %29, i64 %30
  %32 = load %struct.conf*, %struct.conf** %31, align 8
  %33 = getelementptr inbounds %struct.conf, %struct.conf* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.conf*, %struct.conf** %8, align 8
  %36 = getelementptr inbounds %struct.conf, %struct.conf* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @strcmp(i8* %34, i8* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %77

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %10, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %10, align 8
  br label %23

45:                                               ; preds = %23
  %46 = load i64*, i64** %6, align 8
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %7, align 8
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %47, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %45
  %52 = load i64*, i64** %7, align 8
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, 10
  store i64 %54, i64* %52, align 8
  %55 = load %struct.conf***, %struct.conf**** %5, align 8
  %56 = load %struct.conf**, %struct.conf*** %55, align 8
  %57 = load i64*, i64** %7, align 8
  %58 = load i64, i64* %57, align 8
  %59 = mul i64 %58, 8
  %60 = call i8* @realloc(%struct.conf** %56, i64 %59)
  store i8* %60, i8** %11, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %51
  %64 = load i32, i32* @EXIT_FAILURE, align 4
  %65 = call i32 @err(i32 %64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %51
  %67 = load i8*, i8** %11, align 8
  %68 = bitcast i8* %67 to %struct.conf**
  %69 = load %struct.conf***, %struct.conf**** %5, align 8
  store %struct.conf** %68, %struct.conf*** %69, align 8
  store %struct.conf** %68, %struct.conf*** %9, align 8
  br label %70

70:                                               ; preds = %66, %45
  %71 = load %struct.conf*, %struct.conf** %8, align 8
  %72 = load %struct.conf**, %struct.conf*** %9, align 8
  %73 = load i64*, i64** %6, align 8
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %73, align 8
  %76 = getelementptr inbounds %struct.conf*, %struct.conf** %72, i64 %74
  store %struct.conf* %71, %struct.conf** %76, align 8
  br label %77

77:                                               ; preds = %70, %40, %21
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @realloc(%struct.conf**, i64) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
