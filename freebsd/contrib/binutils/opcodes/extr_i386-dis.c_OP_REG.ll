; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_OP_REG.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_OP_REG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REX_B = common dso_local global i32 0, align 4
@rex = common dso_local global i32 0, align 4
@names16 = common dso_local global i8** null, align 8
@names_seg = common dso_local global i8** null, align 8
@names8rex = common dso_local global i8** null, align 8
@names8 = common dso_local global i8** null, align 8
@address_mode = common dso_local global i32 0, align 4
@mode_64bit = common dso_local global i32 0, align 4
@DFLAG = common dso_local global i32 0, align 4
@names64 = common dso_local global i8** null, align 8
@REX_W = common dso_local global i32 0, align 4
@names32 = common dso_local global i8** null, align 8
@prefixes = common dso_local global i32 0, align 4
@PREFIX_DATA = common dso_local global i32 0, align 4
@used_prefixes = common dso_local global i32 0, align 4
@INTERNAL_DISASSEMBLER_ERROR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @OP_REG to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OP_REG(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @REX_B, align 4
  %8 = call i32 @USED_REX(i32 %7)
  %9 = load i32, i32* @rex, align 4
  %10 = load i32, i32* @REX_B, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 8, i32* %6, align 4
  br label %14

14:                                               ; preds = %13, %2
  %15 = load i32, i32* %3, align 4
  switch i32 %15, label %122 [
    i32 163, label %16
    i32 155, label %16
    i32 150, label %16
    i32 159, label %16
    i32 129, label %16
    i32 160, label %16
    i32 130, label %16
    i32 153, label %16
    i32 141, label %25
    i32 128, label %25
    i32 156, label %25
    i32 151, label %25
    i32 140, label %25
    i32 139, label %25
    i32 164, label %34
    i32 165, label %34
    i32 157, label %34
    i32 158, label %34
    i32 152, label %34
    i32 154, label %34
    i32 161, label %34
    i32 162, label %34
    i32 138, label %55
    i32 135, label %55
    i32 133, label %55
    i32 136, label %55
    i32 131, label %55
    i32 137, label %55
    i32 132, label %55
    i32 134, label %55
    i32 149, label %76
    i32 146, label %76
    i32 144, label %76
    i32 147, label %76
    i32 142, label %76
    i32 148, label %76
    i32 143, label %76
    i32 145, label %76
  ]

16:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14
  %17 = load i8**, i8*** @names16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sub nsw i32 %18, 163
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %17, i64 %22
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %5, align 8
  br label %124

25:                                               ; preds = %14, %14, %14, %14, %14, %14
  %26 = load i8**, i8*** @names_seg, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sub nsw i32 %27, 141
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %26, i64 %31
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %5, align 8
  br label %124

34:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14
  %35 = call i32 @USED_REX(i32 0)
  %36 = load i32, i32* @rex, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load i8**, i8*** @names8rex, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sub nsw i32 %40, 164
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %39, i64 %44
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %5, align 8
  br label %54

47:                                               ; preds = %34
  %48 = load i8**, i8*** @names8, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sub nsw i32 %49, 164
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %48, i64 %51
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %5, align 8
  br label %54

54:                                               ; preds = %47, %38
  br label %124

55:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14
  %56 = load i32, i32* @address_mode, align 4
  %57 = load i32, i32* @mode_64bit, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %55
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @DFLAG, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load i8**, i8*** @names64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sub nsw i32 %66, 138
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %65, i64 %70
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %5, align 8
  br label %124

73:                                               ; preds = %59, %55
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 11
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14, %73
  %77 = load i32, i32* @REX_W, align 4
  %78 = call i32 @USED_REX(i32 %77)
  %79 = load i32, i32* @rex, align 4
  %80 = load i32, i32* @REX_W, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %76
  %84 = load i8**, i8*** @names64, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sub nsw i32 %85, 149
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %84, i64 %89
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** %5, align 8
  br label %116

92:                                               ; preds = %76
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @DFLAG, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = load i8**, i8*** @names32, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sub nsw i32 %99, 149
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %98, i64 %103
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %5, align 8
  br label %115

106:                                              ; preds = %92
  %107 = load i8**, i8*** @names16, align 8
  %108 = load i32, i32* %3, align 4
  %109 = sub nsw i32 %108, 149
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %107, i64 %112
  %114 = load i8*, i8** %113, align 8
  store i8* %114, i8** %5, align 8
  br label %115

115:                                              ; preds = %106, %97
  br label %116

116:                                              ; preds = %115, %83
  %117 = load i32, i32* @prefixes, align 4
  %118 = load i32, i32* @PREFIX_DATA, align 4
  %119 = and i32 %117, %118
  %120 = load i32, i32* @used_prefixes, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* @used_prefixes, align 4
  br label %124

122:                                              ; preds = %14
  %123 = load i8*, i8** @INTERNAL_DISASSEMBLER_ERROR, align 8
  store i8* %123, i8** %5, align 8
  br label %124

124:                                              ; preds = %122, %116, %64, %54, %25, %16
  %125 = load i8*, i8** %5, align 8
  %126 = call i32 @oappend(i8* %125)
  ret void
}

declare dso_local i32 @USED_REX(i32) #1

declare dso_local i32 @oappend(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
