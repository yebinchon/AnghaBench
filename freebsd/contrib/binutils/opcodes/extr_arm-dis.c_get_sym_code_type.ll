; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_arm-dis.c_get_sym_code_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_arm-dis.c_get_sym_code_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disassemble_info = type { i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@STT_FUNC = common dso_local global i32 0, align 4
@STT_ARM_TFUNC = common dso_local global i32 0, align 4
@MAP_THUMB = common dso_local global i32 0, align 4
@MAP_ARM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MAP_DATA = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.disassemble_info*, i32, i32*)* @get_sym_code_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sym_code_type(%struct.disassemble_info* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.disassemble_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.disassemble_info* %0, %struct.disassemble_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.disassemble_info*, %struct.disassemble_info** %5, align 8
  %12 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = bitcast i32* %16 to %struct.TYPE_4__**
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %8, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ELF_ST_TYPE(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @STT_FUNC, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @STT_ARM_TFUNC, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %27, %3
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @STT_ARM_TFUNC, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @MAP_THUMB, align 4
  br label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @MAP_ARM, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @TRUE, align 4
  store i32 %42, i32* %4, align 4
  br label %113

43:                                               ; preds = %27
  %44 = load %struct.disassemble_info*, %struct.disassemble_info** %5, align 8
  %45 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @bfd_asymbol_name(i32 %50)
  store i8* %51, i8** %10, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 36
  br i1 %56, label %57, label %111

57:                                               ; preds = %43
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 97
  br i1 %62, label %75, label %63

63:                                               ; preds = %57
  %64 = load i8*, i8** %10, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 116
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = load i8*, i8** %10, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 100
  br i1 %74, label %75, label %111

75:                                               ; preds = %69, %63, %57
  %76 = load i8*, i8** %10, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 2
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load i8*, i8** %10, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 46
  br i1 %86, label %87, label %111

87:                                               ; preds = %81, %75
  %88 = load i8*, i8** %10, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 97
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* @MAP_ARM, align 4
  br label %107

95:                                               ; preds = %87
  %96 = load i8*, i8** %10, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 116
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* @MAP_THUMB, align 4
  br label %105

103:                                              ; preds = %95
  %104 = load i32, i32* @MAP_DATA, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i32 [ %102, %101 ], [ %104, %103 ]
  br label %107

107:                                              ; preds = %105, %93
  %108 = phi i32 [ %94, %93 ], [ %106, %105 ]
  %109 = load i32*, i32** %7, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* @TRUE, align 4
  store i32 %110, i32* %4, align 4
  br label %113

111:                                              ; preds = %81, %69, %43
  %112 = load i32, i32* @FALSE, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %111, %107, %39
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @ELF_ST_TYPE(i32) #1

declare dso_local i8* @bfd_asymbol_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
