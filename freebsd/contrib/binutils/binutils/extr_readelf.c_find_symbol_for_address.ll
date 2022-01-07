; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_find_symbol_for_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_find_symbol_for_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i32 }
%struct.absaddr = type { i64, i64 }

@STT_FUNC = common dso_local global i64 0, align 8
@SHN_UNDEF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"<corrupt>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64, i8*, i64, i64, i64, i8**, i64*)* @find_symbol_for_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_symbol_for_address(%struct.TYPE_3__* %0, i64 %1, i8* %2, i64 %3, i64 %4, i64 %5, i8** %6, i64* %7) #0 {
  %9 = alloca %struct.absaddr, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_3__*, align 8
  %18 = alloca %struct.TYPE_3__*, align 8
  %19 = alloca i64, align 8
  %20 = bitcast %struct.absaddr* %9 to { i64, i64 }*
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 0
  store i64 %4, i64* %21, align 8
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 1
  store i64 %5, i64* %22, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %10, align 8
  store i64 %1, i64* %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i8** %6, i8*** %14, align 8
  store i64* %7, i64** %15, align 8
  store i64 1048576, i64* %16, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %18, align 8
  store i64 0, i64* %19, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %17, align 8
  br label %24

24:                                               ; preds = %81, %8
  %25 = load i64, i64* %19, align 8
  %26 = load i64, i64* %11, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %86

28:                                               ; preds = %24
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @ELF_ST_TYPE(i32 %31)
  %33 = load i64, i64* @STT_FUNC, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %80

35:                                               ; preds = %28
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %80

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.absaddr, %struct.absaddr* %9, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SHN_UNDEF, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.absaddr, %struct.absaddr* %9, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %80

52:                                               ; preds = %45, %40
  %53 = getelementptr inbounds %struct.absaddr, %struct.absaddr* %9, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp sge i64 %54, %57
  br i1 %58, label %59, label %80

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.absaddr, %struct.absaddr* %9, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %61, %64
  %66 = load i64, i64* %16, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %59
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  store %struct.TYPE_3__* %69, %struct.TYPE_3__** %18, align 8
  %70 = getelementptr inbounds %struct.absaddr, %struct.absaddr* %9, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %71, %74
  store i64 %75, i64* %16, align 8
  %76 = load i64, i64* %16, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %68
  br label %86

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79, %59, %52, %45, %35, %28
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %19, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %19, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 1
  store %struct.TYPE_3__* %85, %struct.TYPE_3__** %17, align 8
  br label %24

86:                                               ; preds = %78, %24
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %88 = icmp ne %struct.TYPE_3__* %87, null
  br i1 %88, label %89, label %107

89:                                               ; preds = %86
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %13, align 8
  %94 = icmp uge i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %102

96:                                               ; preds = %89
  %97 = load i8*, i8** %12, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  br label %102

102:                                              ; preds = %96, %95
  %103 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %95 ], [ %101, %96 ]
  %104 = load i8**, i8*** %14, align 8
  store i8* %103, i8** %104, align 8
  %105 = load i64, i64* %16, align 8
  %106 = load i64*, i64** %15, align 8
  store i64 %105, i64* %106, align 8
  br label %112

107:                                              ; preds = %86
  %108 = load i8**, i8*** %14, align 8
  store i8* null, i8** %108, align 8
  %109 = getelementptr inbounds %struct.absaddr, %struct.absaddr* %9, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64*, i64** %15, align 8
  store i64 %110, i64* %111, align 8
  br label %112

112:                                              ; preds = %107, %102
  ret void
}

declare dso_local i64 @ELF_ST_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
