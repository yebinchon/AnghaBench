; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_scan_drectve_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_scan_drectve_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DRECTVE_SECTION_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Sucking in info from %s section in %s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"-export:\00", align 1
@BSF_FUNCTION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@add_stdcall_alias = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @scan_drectve_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_drectve_symbols(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @DRECTVE_SECTION_NAME, align 4
  %17 = call i32* @bfd_get_section_by_name(i32* %15, i32 %16)
  store i32* %17, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %190

21:                                               ; preds = %1
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @bfd_get_section_size(i32* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i8* @xmalloc(i32 %24)
  store i8* %25, i8** %5, align 8
  %26 = load i32*, i32** %2, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @bfd_get_section_contents(i32* %26, i32* %27, i8* %28, i32 0, i32 %29)
  %31 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @DRECTVE_SECTION_NAME, align 4
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @bfd_get_filename(i32* %33)
  %35 = call i32 @inform(i32 %31, i32 %32, i32 %34)
  %36 = load i8*, i8** %5, align 8
  store i8* %36, i8** %6, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8* %40, i8** %7, align 8
  br label %41

41:                                               ; preds = %186, %21
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = icmp ult i8* %42, %43
  br i1 %44, label %45, label %187

45:                                               ; preds = %41
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 45
  br i1 %50, label %51, label %183

51:                                               ; preds = %45
  %52 = load i8*, i8** %6, align 8
  %53 = call i64 @CONST_STRNEQ(i8* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %183

55:                                               ; preds = %51
  %56 = load i32, i32* @BSF_FUNCTION, align 4
  store i32 %56, i32* %10, align 4
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 8
  store i8* %58, i8** %6, align 8
  %59 = load i8*, i8** %6, align 8
  store i8* %59, i8** %8, align 8
  br label %60

60:                                               ; preds = %81, %55
  %61 = load i8*, i8** %6, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = icmp ult i8* %61, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %60
  %65 = load i8*, i8** %6, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 44
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = load i8*, i8** %6, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 32
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i8*, i8** %6, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 45
  br label %79

79:                                               ; preds = %74, %69, %64, %60
  %80 = phi i1 [ false, %69 ], [ false, %64 ], [ false, %60 ], [ %78, %74 ]
  br i1 %80, label %81, label %84

81:                                               ; preds = %79
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %6, align 8
  br label %60

84:                                               ; preds = %79
  %85 = load i8*, i8** %6, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = add nsw i64 %89, 1
  %91 = trunc i64 %90 to i32
  %92 = call i8* @xmalloc(i32 %91)
  store i8* %92, i8** %9, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = trunc i64 %99 to i32
  %101 = call i32 @memcpy(i8* %93, i8* %94, i32 %100)
  %102 = load i8*, i8** %9, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = ptrtoint i8* %103 to i64
  %106 = ptrtoint i8* %104 to i64
  %107 = sub i64 %105, %106
  %108 = getelementptr inbounds i8, i8* %102, i64 %107
  store i8 0, i8* %108, align 1
  %109 = load i8*, i8** %6, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = icmp ult i8* %109, %110
  br i1 %111, label %112, label %149

112:                                              ; preds = %84
  %113 = load i8*, i8** %6, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 44
  br i1 %116, label %117, label %149

117:                                              ; preds = %112
  %118 = load i8*, i8** %6, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %6, align 8
  store i8* %119, i8** %11, align 8
  br label %120

120:                                              ; preds = %136, %117
  %121 = load i8*, i8** %6, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = icmp ult i8* %121, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %120
  %125 = load i8*, i8** %6, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 32
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load i8*, i8** %6, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %132, 45
  br label %134

134:                                              ; preds = %129, %124, %120
  %135 = phi i1 [ false, %124 ], [ false, %120 ], [ %133, %129 ]
  br i1 %135, label %136, label %139

136:                                              ; preds = %134
  %137 = load i8*, i8** %6, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %6, align 8
  br label %120

139:                                              ; preds = %134
  %140 = load i8*, i8** %11, align 8
  %141 = call i64 @CONST_STRNEQ(i8* %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = load i32, i32* @BSF_FUNCTION, align 4
  %145 = xor i32 %144, -1
  %146 = load i32, i32* %10, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* %10, align 4
  br label %148

148:                                              ; preds = %143, %139
  br label %149

149:                                              ; preds = %148, %112, %84
  %150 = load i8*, i8** %9, align 8
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* @BSF_FUNCTION, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  %156 = zext i1 %155 to i32
  %157 = call i32 @def_exports(i8* %150, i8* null, i32 -1, i32 0, i32 0, i32 %156, i32 0)
  %158 = load i64, i64* @add_stdcall_alias, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %182

160:                                              ; preds = %149
  %161 = load i8*, i8** %9, align 8
  %162 = call i8* @strchr(i8* %161, i8 signext 64)
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %182

164:                                              ; preds = %160
  %165 = load i8*, i8** %9, align 8
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 64
  %169 = zext i1 %168 to i32
  store i32 %169, i32* %12, align 4
  %170 = load i8*, i8** %9, align 8
  %171 = load i32, i32* %12, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %170, i64 %172
  %174 = call i8* @xstrdup(i8* %173)
  store i8* %174, i8** %13, align 8
  %175 = load i8*, i8** %13, align 8
  %176 = call i8* @strchr(i8* %175, i8 signext 64)
  store i8* %176, i8** %14, align 8
  %177 = load i8*, i8** %14, align 8
  store i8 0, i8* %177, align 1
  %178 = load i8*, i8** %13, align 8
  %179 = load i8*, i8** %9, align 8
  %180 = call i8* @xstrdup(i8* %179)
  %181 = call i32 @def_exports(i8* %178, i8* %180, i32 -1, i32 0, i32 0, i32 0, i32 0)
  br label %182

182:                                              ; preds = %164, %160, %149
  br label %186

183:                                              ; preds = %51, %45
  %184 = load i8*, i8** %6, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %185, i8** %6, align 8
  br label %186

186:                                              ; preds = %183, %182
  br label %41

187:                                              ; preds = %41
  %188 = load i8*, i8** %5, align 8
  %189 = call i32 @free(i8* %188)
  br label %190

190:                                              ; preds = %187, %20
  ret void
}

declare dso_local i32* @bfd_get_section_by_name(i32*, i32) #1

declare dso_local i32 @bfd_get_section_size(i32*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @bfd_get_section_contents(i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @inform(i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_get_filename(i32*) #1

declare dso_local i64 @CONST_STRNEQ(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @def_exports(i8*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
