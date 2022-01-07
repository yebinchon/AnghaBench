; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mep-ibld.c_insert_normal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mep-ibld.c_insert_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@insert_normal.errbuf = internal global [100 x i8] zeroinitializer, align 16
@CGEN_IFLD_SIGN_OPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"operand out of range (%ld not between %ld and %lu)\00", align 1
@CGEN_IFLD_SIGNED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"operand out of range (0x%lx not between 0 and 0x%lx)\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"operand out of range (%ld not between %ld and %ld)\00", align 1
@CGEN_INSN_LSB0_P = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_5__*, i64, i32, i32, i32, i32, i32, i32, i64*)* @insert_normal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @insert_normal(%struct.TYPE_5__* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i64* %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %11, align 8
  store i64 %1, i64* %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i64* %8, i64** %19, align 8
  %28 = load i32, i32* %16, align 4
  %29 = sub i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = shl i64 1, %30
  %32 = sub nsw i64 %31, 1
  %33 = shl i64 %32, 1
  %34 = or i64 %33, 1
  store i64 %34, i64* %20, align 8
  %35 = load i32, i32* %16, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %9
  store i8* null, i8** %10, align 8
  br label %159

38:                                               ; preds = %9
  %39 = load i32, i32* %17, align 4
  %40 = icmp ugt i32 %39, 32
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 (...) @abort() #3
  unreachable

43:                                               ; preds = %38
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %43
  %52 = load i32, i32* %14, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %18, align 4
  %57 = icmp ugt i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* %18, align 4
  store i32 %59, i32* %17, align 4
  br label %60

60:                                               ; preds = %58, %54, %51
  br label %61

61:                                               ; preds = %60, %43
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @CGEN_IFLD_SIGN_OPT, align 4
  %64 = call i64 @CGEN_BOOL_ATTR(i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %90

66:                                               ; preds = %61
  %67 = load i32, i32* %16, align 4
  %68 = sub i32 %67, 1
  %69 = zext i32 %68 to i64
  %70 = shl i64 1, %69
  %71 = sub nsw i64 0, %70
  store i64 %71, i64* %21, align 8
  %72 = load i64, i64* %20, align 8
  store i64 %72, i64* %22, align 8
  %73 = load i64, i64* %12, align 8
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* %22, align 8
  %78 = icmp ugt i64 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %75, %66
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* %21, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79, %75
  %84 = call i8* @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %85 = load i64, i64* %12, align 8
  %86 = load i64, i64* %21, align 8
  %87 = load i64, i64* %22, align 8
  %88 = call i32 (i8*, i8*, i64, i64, ...) @sprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @insert_normal.errbuf, i64 0, i64 0), i8* %84, i64 %85, i64 %86, i64 %87)
  store i8* getelementptr inbounds ([100 x i8], [100 x i8]* @insert_normal.errbuf, i64 0, i64 0), i8** %10, align 8
  br label %159

89:                                               ; preds = %79
  br label %145

90:                                               ; preds = %61
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* @CGEN_IFLD_SIGNED, align 4
  %93 = call i64 @CGEN_BOOL_ATTR(i32 %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %114, label %95

95:                                               ; preds = %90
  %96 = load i64, i64* %20, align 8
  store i64 %96, i64* %23, align 8
  %97 = load i64, i64* %12, align 8
  store i64 %97, i64* %24, align 8
  %98 = load i64, i64* %12, align 8
  %99 = ashr i64 %98, 32
  %100 = icmp eq i64 %99, -1
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i64, i64* %24, align 8
  %103 = and i64 %102, 4294967295
  store i64 %103, i64* %24, align 8
  br label %104

104:                                              ; preds = %101, %95
  %105 = load i64, i64* %24, align 8
  %106 = load i64, i64* %23, align 8
  %107 = icmp ugt i64 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = call i8* @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %110 = load i64, i64* %24, align 8
  %111 = load i64, i64* %23, align 8
  %112 = call i32 (i8*, i8*, i64, i64, ...) @sprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @insert_normal.errbuf, i64 0, i64 0), i8* %109, i64 %110, i64 %111)
  store i8* getelementptr inbounds ([100 x i8], [100 x i8]* @insert_normal.errbuf, i64 0, i64 0), i8** %10, align 8
  br label %159

113:                                              ; preds = %104
  br label %144

114:                                              ; preds = %90
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %116 = call i32 @cgen_signed_overflow_ok_p(%struct.TYPE_5__* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %143, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* %16, align 4
  %120 = sub i32 %119, 1
  %121 = zext i32 %120 to i64
  %122 = shl i64 1, %121
  %123 = sub nsw i64 0, %122
  store i64 %123, i64* %25, align 8
  %124 = load i32, i32* %16, align 4
  %125 = sub i32 %124, 1
  %126 = zext i32 %125 to i64
  %127 = shl i64 1, %126
  %128 = sub nsw i64 %127, 1
  store i64 %128, i64* %26, align 8
  %129 = load i64, i64* %12, align 8
  %130 = load i64, i64* %25, align 8
  %131 = icmp slt i64 %129, %130
  br i1 %131, label %136, label %132

132:                                              ; preds = %118
  %133 = load i64, i64* %12, align 8
  %134 = load i64, i64* %26, align 8
  %135 = icmp sgt i64 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %132, %118
  %137 = call i8* @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %138 = load i64, i64* %12, align 8
  %139 = load i64, i64* %25, align 8
  %140 = load i64, i64* %26, align 8
  %141 = call i32 (i8*, i8*, i64, i64, ...) @sprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @insert_normal.errbuf, i64 0, i64 0), i8* %137, i64 %138, i64 %139, i64 %140)
  store i8* getelementptr inbounds ([100 x i8], [100 x i8]* @insert_normal.errbuf, i64 0, i64 0), i8** %10, align 8
  br label %159

142:                                              ; preds = %132
  br label %143

143:                                              ; preds = %142, %114
  br label %144

144:                                              ; preds = %143, %113
  br label %145

145:                                              ; preds = %144, %89
  %146 = load i64*, i64** %19, align 8
  %147 = bitcast i64* %146 to i8*
  %148 = load i32, i32* %14, align 4
  %149 = udiv i32 %148, 8
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %147, i64 %150
  store i8* %151, i8** %27, align 8
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %153 = load i64, i64* %12, align 8
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* %17, align 4
  %157 = load i8*, i8** %27, align 8
  %158 = call i32 @insert_1(%struct.TYPE_5__* %152, i64 %153, i32 %154, i32 %155, i32 %156, i8* %157)
  store i8* null, i8** %10, align 8
  br label %159

159:                                              ; preds = %145, %136, %108, %83, %37
  %160 = load i8*, i8** %10, align 8
  ret i8* %160
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i64 @CGEN_BOOL_ATTR(i32, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i64, i64, ...) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @cgen_signed_overflow_ok_p(%struct.TYPE_5__*) #2

declare dso_local i32 @insert_1(%struct.TYPE_5__*, i64, i32, i32, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
