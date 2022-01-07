; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mep-dis.c_mep_examine_vliw64_insns.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mep-dis.c_mep_examine_vliw64_insns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i32, i8*, i32, %struct.TYPE_6__*)*, i64, {}* }

@CGEN_MAX_INSN_SIZE = common dso_local global i32 0, align 4
@BFD_ENDIAN_BIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_6__*)* @mep_examine_vliw64_insns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mep_examine_vliw64_insns(i32 %0, i32 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca [1 x i8], align 1
  %16 = alloca [4 x i8], align 1
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %18 = load i32, i32* @CGEN_MAX_INSN_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  store i32 0, i32* %12, align 4
  store i32 8, i32* %9, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32 (i32, i8*, i32, %struct.TYPE_6__*)*, i32 (i32, i8*, i32, %struct.TYPE_6__*)** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = call i32 %24(i32 %25, i8* %21, i32 %26, %struct.TYPE_6__* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %3
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = bitcast {}** %33 to i32 (i32, i32, %struct.TYPE_6__*)**
  %35 = load i32 (i32, i32, %struct.TYPE_6__*)*, i32 (i32, i32, %struct.TYPE_6__*)** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = call i32 %35(i32 %36, i32 %37, %struct.TYPE_6__* %38)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %127

40:                                               ; preds = %3
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %40
  %47 = getelementptr inbounds i8, i8* %21, i64 0
  %48 = load i8, i8* %47, align 16
  %49 = getelementptr inbounds [1 x i8], [1 x i8]* %15, i64 0, i64 0
  store i8 %48, i8* %49, align 1
  %50 = getelementptr inbounds i8, i8* %21, i64 0
  %51 = load i8, i8* %50, align 16
  %52 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 0
  store i8 %51, i8* %52, align 1
  %53 = getelementptr inbounds i8, i8* %21, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 1
  store i8 %54, i8* %55, align 1
  %56 = getelementptr inbounds i8, i8* %21, i64 2
  %57 = load i8, i8* %56, align 2
  %58 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 2
  store i8 %57, i8* %58, align 1
  %59 = getelementptr inbounds i8, i8* %21, i64 3
  %60 = load i8, i8* %59, align 1
  %61 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 3
  store i8 %60, i8* %61, align 1
  br label %78

62:                                               ; preds = %40
  %63 = getelementptr inbounds i8, i8* %21, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = getelementptr inbounds [1 x i8], [1 x i8]* %15, i64 0, i64 0
  store i8 %64, i8* %65, align 1
  %66 = getelementptr inbounds i8, i8* %21, i64 1
  %67 = load i8, i8* %66, align 1
  %68 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 0
  store i8 %67, i8* %68, align 1
  %69 = getelementptr inbounds i8, i8* %21, i64 0
  %70 = load i8, i8* %69, align 16
  %71 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 1
  store i8 %70, i8* %71, align 1
  %72 = getelementptr inbounds i8, i8* %21, i64 3
  %73 = load i8, i8* %72, align 1
  %74 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 2
  store i8 %73, i8* %74, align 1
  %75 = getelementptr inbounds i8, i8* %21, i64 2
  %76 = load i8, i8* %75, align 2
  %77 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 3
  store i8 %76, i8* %77, align 1
  br label %78

78:                                               ; preds = %62, %46
  %79 = getelementptr inbounds [1 x i8], [1 x i8]* %15, i64 0, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = and i32 %81, 128
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %117

84:                                               ; preds = %78
  %85 = getelementptr inbounds [1 x i8], [1 x i8]* %15, i64 0, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = and i32 %87, 64
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %117

90:                                               ; preds = %84
  %91 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = and i32 %93, 240
  %95 = icmp eq i32 %94, 240
  br i1 %95, label %96, label %115

96:                                               ; preds = %90
  %97 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 1
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = and i32 %99, 7
  %101 = icmp eq i32 %100, 7
  br i1 %101, label %102, label %115

102:                                              ; preds = %96
  %103 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 2
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = and i32 %105, 254
  %107 = icmp ne i32 %106, 240
  br i1 %107, label %114, label %108

108:                                              ; preds = %102
  %109 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 3
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = and i32 %111, 244
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108, %102
  store i32 0, i32* %10, align 4
  store i32 8, i32* %11, align 4
  br label %116

115:                                              ; preds = %108, %96, %90
  store i32 4, i32* %10, align 4
  store i32 4, i32* %11, align 4
  br label %116

116:                                              ; preds = %115, %114
  br label %118

117:                                              ; preds = %84, %78
  store i32 2, i32* %10, align 4
  store i32 6, i32* %11, align 4
  br label %118

118:                                              ; preds = %117, %116
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @mep_print_vliw_insns(i32 %119, i32 %120, %struct.TYPE_6__* %121, i8* %21, i32 %122, i32 %123, i32 %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %127

127:                                              ; preds = %118, %31
  %128 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %128)
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mep_print_vliw_insns(i32, i32, %struct.TYPE_6__*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
