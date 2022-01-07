; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_cgen-dis.c_hash_insn_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_cgen-dis.c_hash_insn_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (i8*, i64)*, i32 (i32)* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_11__* }

@CGEN_ENDIAN_BIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_11__**, %struct.TYPE_11__*)* @hash_insn_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @hash_insn_list(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, %struct.TYPE_11__** %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__**, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [4 x i8], align 1
  %13 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__** %2, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %8, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = call i64 @CGEN_CPU_ENDIAN(%struct.TYPE_12__* %14)
  %16 = load i64, i64* @CGEN_ENDIAN_BIG, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %9, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %10, align 8
  br label %20

20:                                               ; preds = %60, %4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %22 = icmp ne %struct.TYPE_11__* %21, null
  br i1 %22, label %23, label %66

23:                                               ; preds = %20
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load i32 (i32)*, i32 (i32)** %25, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 %26(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  br label %60

33:                                               ; preds = %23
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @CGEN_INSN_BASE_VALUE(i32 %36)
  store i64 %37, i64* %13, align 8
  %38 = load i64, i64* %13, align 8
  %39 = trunc i64 %38 to i32
  %40 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @CGEN_INSN_MASK_BITSIZE(i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @bfd_put_bits(i32 %39, i8* %40, i32 %44, i32 %45)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32 (i8*, i64)*, i32 (i8*, i64)** %48, align 8
  %50 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %51 = load i64, i64* %13, align 8
  %52 = call i32 %49(i8* %50, i64 %51)
  store i32 %52, i32* %11, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @add_insn_to_hash_chain(%struct.TYPE_11__* %53, i32 %56, %struct.TYPE_11__** %57, i32 %58)
  br label %60

60:                                               ; preds = %33, %32
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  store %struct.TYPE_11__* %63, %struct.TYPE_11__** %10, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 1
  store %struct.TYPE_11__* %65, %struct.TYPE_11__** %8, align 8
  br label %20

66:                                               ; preds = %20
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  ret %struct.TYPE_11__* %67
}

declare dso_local i64 @CGEN_CPU_ENDIAN(%struct.TYPE_12__*) #1

declare dso_local i64 @CGEN_INSN_BASE_VALUE(i32) #1

declare dso_local i32 @bfd_put_bits(i32, i8*, i32, i32) #1

declare dso_local i32 @CGEN_INSN_MASK_BITSIZE(i32) #1

declare dso_local i32 @add_insn_to_hash_chain(%struct.TYPE_11__*, i32, %struct.TYPE_11__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
