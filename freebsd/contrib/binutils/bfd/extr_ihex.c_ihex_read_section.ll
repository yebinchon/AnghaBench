; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ihex.c_ihex_read_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ihex.c_ihex_read_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%B: internal error in ihex_read_section\00", align 1
@bfd_error_bad_value = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"%B: bad section length in ihex_read_section\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i8*)* @ihex_read_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ihex_read_section(i32* %0, %struct.TYPE_3__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca [8 x i8], align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %10, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SEEK_SET, align 4
  %22 = call i64 @bfd_seek(i32* %17, i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %163

25:                                               ; preds = %3
  %26 = load i8*, i8** %7, align 8
  store i8* %26, i8** %9, align 8
  store i64 0, i64* %11, align 8
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %12, align 4
  br label %28

28:                                               ; preds = %137, %39, %25
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @ihex_get_byte(i32* %29, i32* %12)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @EOF, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %138

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 13
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 10
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %33
  br label %28

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 58
  %43 = zext i1 %42 to i32
  %44 = call i32 @BFD_ASSERT(i32 %43)
  %45 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @bfd_bread(i8* %45, i32 8, i32* %46)
  %48 = icmp ne i32 %47, 8
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %163

50:                                               ; preds = %40
  %51 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %52 = call i8* @HEX2(i8* %51)
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %14, align 4
  %54 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %55 = getelementptr inbounds i8, i8* %54, i64 6
  %56 = call i8* @HEX2(i8* %55)
  %57 = ptrtoint i8* %56 to i32
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %50
  %61 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @_bfd_error_handler(i32 %61, i32* %62)
  %64 = load i32, i32* @bfd_error_bad_value, align 4
  %65 = call i32 @bfd_set_error(i32 %64)
  br label %163

66:                                               ; preds = %50
  %67 = load i32, i32* %14, align 4
  %68 = mul i32 %67, 2
  %69 = zext i32 %68 to i64
  %70 = load i64, i64* %11, align 8
  %71 = icmp ugt i64 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %66
  %73 = load i8*, i8** %10, align 8
  %74 = load i32, i32* %14, align 4
  %75 = mul nsw i32 %74, 2
  %76 = call i8* @bfd_realloc(i8* %73, i32 %75)
  store i8* %76, i8** %10, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %163

80:                                               ; preds = %72
  %81 = load i32, i32* %14, align 4
  %82 = mul i32 %81, 2
  %83 = zext i32 %82 to i64
  store i64 %83, i64* %11, align 8
  br label %84

84:                                               ; preds = %80, %66
  %85 = load i8*, i8** %10, align 8
  %86 = load i32, i32* %14, align 4
  %87 = mul nsw i32 %86, 2
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @bfd_bread(i8* %85, i32 %87, i32* %88)
  %90 = load i32, i32* %14, align 4
  %91 = mul i32 %90, 2
  %92 = icmp ne i32 %89, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  br label %163

94:                                               ; preds = %84
  store i32 0, i32* %16, align 4
  br label %95

95:                                               ; preds = %109, %94
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %95
  %100 = load i8*, i8** %10, align 8
  %101 = load i32, i32* %16, align 4
  %102 = mul i32 2, %101
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  %105 = call i8* @HEX2(i8* %104)
  %106 = ptrtoint i8* %105 to i8
  %107 = load i8*, i8** %9, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %9, align 8
  store i8 %106, i8* %107, align 1
  br label %109

109:                                              ; preds = %99
  %110 = load i32, i32* %16, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %16, align 4
  br label %95

112:                                              ; preds = %95
  %113 = load i8*, i8** %9, align 8
  %114 = load i8*, i8** %7, align 8
  %115 = ptrtoint i8* %113 to i64
  %116 = ptrtoint i8* %114 to i64
  %117 = sub i64 %115, %116
  %118 = trunc i64 %117 to i32
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp sge i32 %118, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %112
  %124 = load i8*, i8** %10, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i8*, i8** %10, align 8
  %128 = call i32 @free(i8* %127)
  br label %129

129:                                              ; preds = %126, %123
  %130 = load i32, i32* @TRUE, align 4
  store i32 %130, i32* %4, align 4
  br label %171

131:                                              ; preds = %112
  %132 = load i8*, i8** %10, align 8
  %133 = load i32*, i32** %5, align 8
  %134 = call i32 @bfd_bread(i8* %132, i32 2, i32* %133)
  %135 = icmp ne i32 %134, 2
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %163

137:                                              ; preds = %131
  br label %28

138:                                              ; preds = %28
  %139 = load i8*, i8** %9, align 8
  %140 = load i8*, i8** %7, align 8
  %141 = ptrtoint i8* %139 to i64
  %142 = ptrtoint i8* %140 to i64
  %143 = sub i64 %141, %142
  %144 = trunc i64 %143 to i32
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %138
  %150 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %151 = load i32*, i32** %5, align 8
  %152 = call i32 @_bfd_error_handler(i32 %150, i32* %151)
  %153 = load i32, i32* @bfd_error_bad_value, align 4
  %154 = call i32 @bfd_set_error(i32 %153)
  br label %163

155:                                              ; preds = %138
  %156 = load i8*, i8** %10, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i8*, i8** %10, align 8
  %160 = call i32 @free(i8* %159)
  br label %161

161:                                              ; preds = %158, %155
  %162 = load i32, i32* @TRUE, align 4
  store i32 %162, i32* %4, align 4
  br label %171

163:                                              ; preds = %149, %136, %93, %79, %60, %49, %24
  %164 = load i8*, i8** %10, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i8*, i8** %10, align 8
  %168 = call i32 @free(i8* %167)
  br label %169

169:                                              ; preds = %166, %163
  %170 = load i32, i32* @FALSE, align 4
  store i32 %170, i32* %4, align 4
  br label %171

171:                                              ; preds = %169, %161, %129
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local i64 @bfd_seek(i32*, i32, i32) #1

declare dso_local i32 @ihex_get_byte(i32*, i32*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @bfd_bread(i8*, i32, i32*) #1

declare dso_local i8* @HEX2(i8*) #1

declare dso_local i32 @_bfd_error_handler(i32, i32*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i8* @bfd_realloc(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
