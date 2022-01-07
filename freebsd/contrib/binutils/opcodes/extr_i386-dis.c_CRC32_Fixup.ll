; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_CRC32_Fixup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_CRC32_Fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@obuf = common dso_local global i8* null, align 8
@intel_syntax = common dso_local global i32 0, align 4
@REX_W = common dso_local global i32 0, align 4
@rex = common dso_local global i32 0, align 4
@DFLAG = common dso_local global i32 0, align 4
@prefixes = common dso_local global i32 0, align 4
@PREFIX_DATA = common dso_local global i32 0, align 4
@used_prefixes = common dso_local global i32 0, align 4
@INTERNAL_DISASSEMBLER_ERROR = common dso_local global i32 0, align 4
@modrm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@MODRM_CHECK = common dso_local global i32 0, align 4
@codep = common dso_local global i32 0, align 4
@REX_B = common dso_local global i32 0, align 4
@names8rex = common dso_local global i32* null, align 8
@names8 = common dso_local global i32* null, align 8
@names64 = common dso_local global i32* null, align 8
@names16 = common dso_local global i32* null, align 8
@names32 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @CRC32_Fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CRC32_Fixup(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** @obuf, align 8
  %8 = load i8*, i8** @obuf, align 8
  %9 = call i32 @strlen(i8* %8)
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %7, i64 %10
  store i8* %11, i8** %5, align 8
  %12 = load i32, i32* %3, align 4
  switch i32 %12, label %52 [
    i32 129, label %13
    i32 128, label %20
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @intel_syntax, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %55

17:                                               ; preds = %13
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %5, align 8
  store i8 98, i8* %18, align 1
  br label %55

20:                                               ; preds = %2
  %21 = load i32, i32* @intel_syntax, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %55

24:                                               ; preds = %20
  %25 = load i32, i32* @REX_W, align 4
  %26 = call i32 @USED_REX(i32 %25)
  %27 = load i32, i32* @rex, align 4
  %28 = load i32, i32* @REX_W, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %5, align 8
  store i8 113, i8* %32, align 1
  br label %46

34:                                               ; preds = %24
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @DFLAG, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %5, align 8
  store i8 108, i8* %40, align 1
  br label %45

42:                                               ; preds = %34
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %5, align 8
  store i8 119, i8* %43, align 1
  br label %45

45:                                               ; preds = %42, %39
  br label %46

46:                                               ; preds = %45, %31
  %47 = load i32, i32* @prefixes, align 4
  %48 = load i32, i32* @PREFIX_DATA, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @used_prefixes, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* @used_prefixes, align 4
  br label %55

52:                                               ; preds = %2
  %53 = load i32, i32* @INTERNAL_DISASSEMBLER_ERROR, align 4
  %54 = call i32 @oappend(i32 %53)
  br label %55

55:                                               ; preds = %52, %46, %23, %17, %16
  %56 = load i8*, i8** %5, align 8
  store i8 0, i8* %56, align 1
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 0), align 4
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %59, label %138

59:                                               ; preds = %55
  %60 = load i32, i32* @MODRM_CHECK, align 4
  %61 = load i32, i32* @codep, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @codep, align 4
  %63 = load i32, i32* @REX_B, align 4
  %64 = call i32 @USED_REX(i32 %63)
  %65 = load i32, i32* @rex, align 4
  %66 = load i32, i32* @REX_B, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 8, i32 0
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %3, align 4
  %72 = icmp eq i32 %71, 129
  br i1 %72, label %73, label %96

73:                                               ; preds = %59
  %74 = call i32 @USED_REX(i32 0)
  %75 = load i32, i32* @rex, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = load i32*, i32** @names8rex, align 8
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %78, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @oappend(i32 %84)
  br label %95

86:                                               ; preds = %73
  %87 = load i32*, i32** @names8, align 8
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @oappend(i32 %93)
  br label %95

95:                                               ; preds = %86, %77
  br label %137

96:                                               ; preds = %59
  %97 = load i32, i32* @REX_W, align 4
  %98 = call i32 @USED_REX(i32 %97)
  %99 = load i32, i32* @rex, align 4
  %100 = load i32, i32* @REX_W, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %96
  %104 = load i32*, i32** @names64, align 8
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %104, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @oappend(i32 %110)
  br label %136

112:                                              ; preds = %96
  %113 = load i32, i32* @prefixes, align 4
  %114 = load i32, i32* @PREFIX_DATA, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %112
  %118 = load i32*, i32** @names16, align 8
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %119, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %118, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @oappend(i32 %124)
  br label %135

126:                                              ; preds = %112
  %127 = load i32*, i32** @names32, align 8
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %127, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @oappend(i32 %133)
  br label %135

135:                                              ; preds = %126, %117
  br label %136

136:                                              ; preds = %135, %103
  br label %137

137:                                              ; preds = %136, %95
  br label %142

138:                                              ; preds = %55
  %139 = load i32, i32* %3, align 4
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @OP_E(i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %138, %137
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @USED_REX(i32) #1

declare dso_local i32 @oappend(i32) #1

declare dso_local i32 @OP_E(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
