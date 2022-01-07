; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_init_intraclass_conv_libfuncs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_init_intraclass_conv_libfuncs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }

@VOIDmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i8*, i32, i32)* @init_intraclass_conv_libfuncs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_intraclass_conv_libfuncs(%struct.TYPE_5__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @GET_CLASS_NARROWEST_MODE(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @strlen(i8* %22)
  store i64 %23, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %12, align 4
  br label %25

25:                                               ; preds = %35, %4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @VOIDmode, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load i64, i64* %11, align 8
  %31 = load i32, i32* %12, align 4
  %32 = call i8* @GET_MODE_NAME(i32 %31)
  %33 = call i64 @strlen(i8* %32)
  %34 = call i64 @MAX(i64 %30, i64 %33)
  store i64 %34, i64* %11, align 8
  br label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @GET_MODE_WIDER_MODE(i32 %36)
  store i32 %37, i32* %12, align 4
  br label %25

38:                                               ; preds = %25
  %39 = load i64, i64* %10, align 8
  %40 = add i64 2, %39
  %41 = load i64, i64* %11, align 8
  %42 = mul i64 2, %41
  %43 = add i64 %40, %42
  %44 = add i64 %43, 1
  %45 = add i64 %44, 1
  %46 = trunc i64 %45 to i32
  %47 = call i8* @alloca(i32 %46)
  store i8* %47, i8** %17, align 8
  %48 = load i8*, i8** %17, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  store i8 95, i8* %49, align 1
  %50 = load i8*, i8** %17, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  store i8 95, i8* %51, align 1
  %52 = load i8*, i8** %17, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  %54 = load i8*, i8** %6, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @memcpy(i8* %53, i8* %54, i64 %55)
  %57 = load i8*, i8** %17, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  store i8* %60, i8** %18, align 8
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %166, %38
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @VOIDmode, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %169

66:                                               ; preds = %62
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @GET_MODE_WIDER_MODE(i32 %67)
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %162, %66
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @VOIDmode, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %165

73:                                               ; preds = %69
  %74 = load i32, i32* %12, align 4
  %75 = call i8* @GET_MODE_NAME(i32 %74)
  store i8* %75, i8** %14, align 8
  %76 = load i32, i32* %13, align 4
  %77 = call i8* @GET_MODE_NAME(i32 %76)
  store i8* %77, i8** %15, align 8
  %78 = load i8*, i8** %18, align 8
  store i8* %78, i8** %19, align 8
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i8*, i8** %14, align 8
  br label %85

83:                                               ; preds = %73
  %84 = load i8*, i8** %15, align 8
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i8* [ %82, %81 ], [ %84, %83 ]
  store i8* %86, i8** %16, align 8
  br label %87

87:                                               ; preds = %96, %85
  %88 = load i8*, i8** %16, align 8
  %89 = load i8, i8* %88, align 1
  %90 = icmp ne i8 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %87
  %92 = load i8*, i8** %16, align 8
  %93 = load i8, i8* %92, align 1
  %94 = call signext i8 @TOLOWER(i8 signext %93)
  %95 = load i8*, i8** %19, align 8
  store i8 %94, i8* %95, align 1
  br label %96

96:                                               ; preds = %91
  %97 = load i8*, i8** %19, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %19, align 8
  %99 = load i8*, i8** %16, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %16, align 8
  br label %87

101:                                              ; preds = %87
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i8*, i8** %15, align 8
  br label %108

106:                                              ; preds = %101
  %107 = load i8*, i8** %14, align 8
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i8* [ %105, %104 ], [ %107, %106 ]
  store i8* %109, i8** %16, align 8
  br label %110

110:                                              ; preds = %119, %108
  %111 = load i8*, i8** %16, align 8
  %112 = load i8, i8* %111, align 1
  %113 = icmp ne i8 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %110
  %115 = load i8*, i8** %16, align 8
  %116 = load i8, i8* %115, align 1
  %117 = call signext i8 @TOLOWER(i8 signext %116)
  %118 = load i8*, i8** %19, align 8
  store i8 %117, i8* %118, align 1
  br label %119

119:                                              ; preds = %114
  %120 = load i8*, i8** %19, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %19, align 8
  %122 = load i8*, i8** %16, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %16, align 8
  br label %110

124:                                              ; preds = %110
  %125 = load i8*, i8** %19, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %19, align 8
  store i8 50, i8* %125, align 1
  %127 = load i8*, i8** %19, align 8
  store i8 0, i8* %127, align 1
  %128 = load i8*, i8** %17, align 8
  %129 = load i8*, i8** %19, align 8
  %130 = load i8*, i8** %17, align 8
  %131 = ptrtoint i8* %129 to i64
  %132 = ptrtoint i8* %130 to i64
  %133 = sub i64 %131, %132
  %134 = trunc i64 %133 to i32
  %135 = call i32 @ggc_alloc_string(i8* %128, i32 %134)
  %136 = call i32 @init_one_libfunc(i32 %135)
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %124
  %143 = load i32, i32* %13, align 4
  br label %146

144:                                              ; preds = %124
  %145 = load i32, i32* %12, align 4
  br label %146

146:                                              ; preds = %144, %142
  %147 = phi i32 [ %143, %142 ], [ %145, %144 ]
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %139, i64 %148
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %146
  %154 = load i32, i32* %12, align 4
  br label %157

155:                                              ; preds = %146
  %156 = load i32, i32* %13, align 4
  br label %157

157:                                              ; preds = %155, %153
  %158 = phi i32 [ %154, %153 ], [ %156, %155 ]
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  store i32 %136, i32* %161, align 4
  br label %162

162:                                              ; preds = %157
  %163 = load i32, i32* %13, align 4
  %164 = call i32 @GET_MODE_WIDER_MODE(i32 %163)
  store i32 %164, i32* %13, align 4
  br label %69

165:                                              ; preds = %69
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %12, align 4
  %168 = call i32 @GET_MODE_WIDER_MODE(i32 %167)
  store i32 %168, i32* %12, align 4
  br label %62

169:                                              ; preds = %62
  ret void
}

declare dso_local i32 @GET_CLASS_NARROWEST_MODE(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @MAX(i64, i64) #1

declare dso_local i8* @GET_MODE_NAME(i32) #1

declare dso_local i32 @GET_MODE_WIDER_MODE(i32) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local signext i8 @TOLOWER(i8 signext) #1

declare dso_local i32 @init_one_libfunc(i32) #1

declare dso_local i32 @ggc_alloc_string(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
