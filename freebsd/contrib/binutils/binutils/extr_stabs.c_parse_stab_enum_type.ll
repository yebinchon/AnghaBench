; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_parse_stab_enum_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_parse_stab_enum_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEBUG_TYPE_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @parse_stab_enum_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_stab_enum_type(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %6, align 8
  %16 = load i8**, i8*** %5, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 45
  br i1 %20, label %21, label %36

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %28, %21
  %23 = load i8**, i8*** %5, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 58
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i8**, i8*** %5, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %29, align 8
  br label %22

32:                                               ; preds = %22
  %33 = load i8**, i8*** %5, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %33, align 8
  br label %36

36:                                               ; preds = %32, %2
  store i32 10, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = mul i64 %38, 8
  %40 = trunc i64 %39 to i32
  %41 = call i64 @xmalloc(i32 %40)
  %42 = inttoptr i64 %41 to i8**
  store i8** %42, i8*** %7, align 8
  %43 = load i32, i32* %10, align 4
  %44 = zext i32 %43 to i64
  %45 = mul i64 %44, 8
  %46 = trunc i64 %45 to i32
  %47 = call i64 @xmalloc(i32 %46)
  %48 = inttoptr i64 %47 to i8**
  store i8** %48, i8*** %8, align 8
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %131, %36
  %50 = load i8**, i8*** %5, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %49
  %56 = load i8**, i8*** %5, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 59
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load i8**, i8*** %5, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 44
  br label %67

67:                                               ; preds = %61, %55, %49
  %68 = phi i1 [ false, %55 ], [ false, %49 ], [ %66, %61 ]
  br i1 %68, label %69, label %144

69:                                               ; preds = %67
  %70 = load i8**, i8*** %5, align 8
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %11, align 8
  br label %72

72:                                               ; preds = %77, %69
  %73 = load i8*, i8** %11, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 58
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i8*, i8** %11, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %11, align 8
  br label %72

80:                                               ; preds = %72
  %81 = load i8**, i8*** %5, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = load i8**, i8*** %5, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = ptrtoint i8* %83 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = trunc i64 %88 to i32
  %90 = call i8* @savestring(i8* %82, i32 %89)
  store i8* %90, i8** %12, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = load i8**, i8*** %5, align 8
  store i8* %92, i8** %93, align 8
  %94 = load i8**, i8*** %5, align 8
  %95 = call i64 @parse_number(i8** %94, i32* null)
  %96 = inttoptr i64 %95 to i8*
  store i8* %96, i8** %13, align 8
  %97 = load i8**, i8*** %5, align 8
  %98 = load i8*, i8** %97, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 44
  br i1 %101, label %102, label %106

102:                                              ; preds = %80
  %103 = load i8*, i8** %6, align 8
  %104 = call i32 @bad_stab(i8* %103)
  %105 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  store i32 %105, i32* %3, align 4
  br label %167

106:                                              ; preds = %80
  %107 = load i8**, i8*** %5, align 8
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %107, align 8
  %110 = load i32, i32* %9, align 4
  %111 = add i32 %110, 1
  %112 = load i32, i32* %10, align 4
  %113 = icmp uge i32 %111, %112
  br i1 %113, label %114, label %131

114:                                              ; preds = %106
  %115 = load i32, i32* %10, align 4
  %116 = add i32 %115, 10
  store i32 %116, i32* %10, align 4
  %117 = load i8**, i8*** %7, align 8
  %118 = load i32, i32* %10, align 4
  %119 = zext i32 %118 to i64
  %120 = mul i64 %119, 8
  %121 = trunc i64 %120 to i32
  %122 = call i64 @xrealloc(i8** %117, i32 %121)
  %123 = inttoptr i64 %122 to i8**
  store i8** %123, i8*** %7, align 8
  %124 = load i8**, i8*** %8, align 8
  %125 = load i32, i32* %10, align 4
  %126 = zext i32 %125 to i64
  %127 = mul i64 %126, 8
  %128 = trunc i64 %127 to i32
  %129 = call i64 @xrealloc(i8** %124, i32 %128)
  %130 = inttoptr i64 %129 to i8**
  store i8** %130, i8*** %8, align 8
  br label %131

131:                                              ; preds = %114, %106
  %132 = load i8*, i8** %12, align 8
  %133 = load i8**, i8*** %7, align 8
  %134 = load i32, i32* %9, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135
  store i8* %132, i8** %136, align 8
  %137 = load i8*, i8** %13, align 8
  %138 = load i8**, i8*** %8, align 8
  %139 = load i32, i32* %9, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  store i8* %137, i8** %141, align 8
  %142 = load i32, i32* %9, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %49

144:                                              ; preds = %67
  %145 = load i8**, i8*** %7, align 8
  %146 = load i32, i32* %9, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %145, i64 %147
  store i8* null, i8** %148, align 8
  %149 = load i8**, i8*** %8, align 8
  %150 = load i32, i32* %9, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  store i8* null, i8** %152, align 8
  %153 = load i8**, i8*** %5, align 8
  %154 = load i8*, i8** %153, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 59
  br i1 %157, label %158, label %162

158:                                              ; preds = %144
  %159 = load i8**, i8*** %5, align 8
  %160 = load i8*, i8** %159, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %159, align 8
  br label %162

162:                                              ; preds = %158, %144
  %163 = load i8*, i8** %4, align 8
  %164 = load i8**, i8*** %7, align 8
  %165 = load i8**, i8*** %8, align 8
  %166 = call i32 @debug_make_enum_type(i8* %163, i8** %164, i8** %165)
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %162, %102
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i8* @savestring(i8*, i32) #1

declare dso_local i64 @parse_number(i8**, i32*) #1

declare dso_local i32 @bad_stab(i8*) #1

declare dso_local i64 @xrealloc(i8**, i32) #1

declare dso_local i32 @debug_make_enum_type(i8*, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
