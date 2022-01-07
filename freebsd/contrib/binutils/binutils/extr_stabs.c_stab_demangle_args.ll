; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_demangle_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_demangle_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_demangle_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@FALSE = common dso_local global i32 0, align 4
@DEBUG_TYPE_NULL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stab_demangle_info*, i8**, i32**, i32*)* @stab_demangle_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stab_demangle_args(%struct.stab_demangle_info* %0, i8** %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.stab_demangle_info*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.stab_demangle_info* %0, %struct.stab_demangle_info** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i8**, i8*** %7, align 8
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %10, align 8
  store i32 10, i32* %11, align 4
  %19 = load i32**, i32*** %8, align 8
  %20 = icmp ne i32** %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  %23 = zext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = call i64 @xmalloc(i32 %25)
  %27 = inttoptr i64 %26 to i32*
  %28 = load i32**, i32*** %8, align 8
  store i32* %27, i32** %28, align 8
  %29 = load i32, i32* @FALSE, align 4
  %30 = load i32*, i32** %9, align 8
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %21, %4
  store i32 0, i32* %12, align 4
  br label %32

32:                                               ; preds = %133, %31
  %33 = load i8**, i8*** %7, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 95
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = load i8**, i8*** %7, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i8**, i8*** %7, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 101
  br label %50

50:                                               ; preds = %44, %38, %32
  %51 = phi i1 [ false, %38 ], [ false, %32 ], [ %49, %44 ]
  br i1 %51, label %52, label %134

52:                                               ; preds = %50
  %53 = load i8**, i8*** %7, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 78
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load i8**, i8*** %7, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 84
  br i1 %63, label %64, label %124

64:                                               ; preds = %58, %52
  %65 = load i8**, i8*** %7, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = load i8, i8* %66, align 1
  store i8 %67, i8* %13, align 1
  %68 = load i8**, i8*** %7, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %68, align 8
  %71 = load i8, i8* %13, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 84
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  store i32 1, i32* %14, align 4
  br label %84

75:                                               ; preds = %64
  %76 = load i8**, i8*** %7, align 8
  %77 = call i32 @stab_demangle_get_count(i8** %76, i32* %14)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 @stab_bad_demangle(i8* %80)
  %82 = load i32, i32* @FALSE, align 4
  store i32 %82, i32* %5, align 4
  br label %162

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83, %74
  %85 = load i8**, i8*** %7, align 8
  %86 = call i32 @stab_demangle_get_count(i8** %85, i32* %15)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i8*, i8** %10, align 8
  %90 = call i32 @stab_bad_demangle(i8* %89)
  %91 = load i32, i32* @FALSE, align 4
  store i32 %91, i32* %5, align 4
  br label %162

92:                                               ; preds = %84
  %93 = load i32, i32* %15, align 4
  %94 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %6, align 8
  %95 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp uge i32 %93, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load i8*, i8** %10, align 8
  %100 = call i32 @stab_bad_demangle(i8* %99)
  %101 = load i32, i32* @FALSE, align 4
  store i32 %101, i32* %5, align 4
  br label %162

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %122, %102
  %104 = load i32, i32* %14, align 4
  %105 = add i32 %104, -1
  store i32 %105, i32* %14, align 4
  %106 = icmp ugt i32 %104, 0
  br i1 %106, label %107, label %123

107:                                              ; preds = %103
  %108 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %6, align 8
  %109 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i32, i32* %15, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  store i8* %115, i8** %16, align 8
  %116 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %6, align 8
  %117 = load i32**, i32*** %8, align 8
  %118 = call i32 @stab_demangle_arg(%struct.stab_demangle_info* %116, i8** %16, i32** %117, i32* %12, i32* %11)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %107
  %121 = load i32, i32* @FALSE, align 4
  store i32 %121, i32* %5, align 4
  br label %162

122:                                              ; preds = %107
  br label %103

123:                                              ; preds = %103
  br label %133

124:                                              ; preds = %58
  %125 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %6, align 8
  %126 = load i8**, i8*** %7, align 8
  %127 = load i32**, i32*** %8, align 8
  %128 = call i32 @stab_demangle_arg(%struct.stab_demangle_info* %125, i8** %126, i32** %127, i32* %12, i32* %11)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %124
  %131 = load i32, i32* @FALSE, align 4
  store i32 %131, i32* %5, align 4
  br label %162

132:                                              ; preds = %124
  br label %133

133:                                              ; preds = %132, %123
  br label %32

134:                                              ; preds = %50
  %135 = load i32**, i32*** %8, align 8
  %136 = icmp ne i32** %135, null
  br i1 %136, label %137, label %144

137:                                              ; preds = %134
  %138 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %139 = load i32**, i32*** %8, align 8
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %12, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %138, i32* %143, align 4
  br label %144

144:                                              ; preds = %137, %134
  %145 = load i8**, i8*** %7, align 8
  %146 = load i8*, i8** %145, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 101
  br i1 %149, label %150, label %160

150:                                              ; preds = %144
  %151 = load i32**, i32*** %8, align 8
  %152 = icmp ne i32** %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load i32, i32* @TRUE, align 4
  %155 = load i32*, i32** %9, align 8
  store i32 %154, i32* %155, align 4
  br label %156

156:                                              ; preds = %153, %150
  %157 = load i8**, i8*** %7, align 8
  %158 = load i8*, i8** %157, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %157, align 8
  br label %160

160:                                              ; preds = %156, %144
  %161 = load i32, i32* @TRUE, align 4
  store i32 %161, i32* %5, align 4
  br label %162

162:                                              ; preds = %160, %130, %120, %98, %88, %79
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @stab_demangle_get_count(i8**, i32*) #1

declare dso_local i32 @stab_bad_demangle(i8*) #1

declare dso_local i32 @stab_demangle_arg(%struct.stab_demangle_info*, i8**, i32**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
