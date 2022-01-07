; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_module.c_dt_module_symcomp64.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_module.c_dt_module_symcomp64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i32 }

@STT_NOTYPE = common dso_local global i64 0, align 8
@STB_WEAK = common dso_local global i64 0, align 8
@dt_module_strtab = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @dt_module_symcomp64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_module_symcomp64(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_2__**
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__**
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %7, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 -1
  store i32 %30, i32* %3, align 4
  br label %112

31:                                               ; preds = %2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = icmp ne i32 %36, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %31
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 1, i32 -1
  store i32 %49, i32* %3, align 4
  br label %112

50:                                               ; preds = %31
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @ELF64_ST_TYPE(i32 %53)
  %55 = load i64, i64* @STT_NOTYPE, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @ELF64_ST_TYPE(i32 %60)
  %62 = load i64, i64* @STT_NOTYPE, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = icmp ne i32 %57, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %50
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @ELF64_ST_TYPE(i32 %69)
  %71 = load i64, i64* @STT_NOTYPE, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 1, i32 -1
  store i32 %74, i32* %3, align 4
  br label %112

75:                                               ; preds = %50
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @ELF64_ST_BIND(i32 %78)
  %80 = load i64, i64* @STB_WEAK, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @ELF64_ST_BIND(i32 %85)
  %87 = load i64, i64* @STB_WEAK, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = icmp ne i32 %82, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %75
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @ELF64_ST_BIND(i32 %94)
  %96 = load i64, i64* @STB_WEAK, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 1, i32 -1
  store i32 %99, i32* %3, align 4
  br label %112

100:                                              ; preds = %75
  %101 = load i64, i64* @dt_module_strtab, align 8
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %101, %104
  %106 = load i64, i64* @dt_module_strtab, align 8
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %106, %109
  %111 = call i32 @strcmp(i64 %105, i64 %110)
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %100, %91, %66, %43, %21
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i64 @ELF64_ST_TYPE(i32) #1

declare dso_local i64 @ELF64_ST_BIND(i32) #1

declare dso_local i32 @strcmp(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
