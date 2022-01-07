; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_init_interclass_conv_libfuncs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_init_interclass_conv_libfuncs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }

@VOIDmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i8*, i32, i32)* @init_interclass_conv_libfuncs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_interclass_conv_libfuncs(%struct.TYPE_5__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @GET_CLASS_NARROWEST_MODE(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @GET_CLASS_NARROWEST_MODE(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @strlen(i8* %25)
  store i64 %26, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %13, align 4
  br label %28

28:                                               ; preds = %38, %4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @VOIDmode, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load i64, i64* %12, align 8
  %34 = load i32, i32* %13, align 4
  %35 = call i8* @GET_MODE_NAME(i32 %34)
  %36 = call i64 @strlen(i8* %35)
  %37 = call i64 @MAX(i64 %33, i64 %36)
  store i64 %37, i64* %12, align 8
  br label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @GET_MODE_WIDER_MODE(i32 %39)
  store i32 %40, i32* %13, align 4
  br label %28

41:                                               ; preds = %28
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %14, align 4
  br label %43

43:                                               ; preds = %53, %41
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* @VOIDmode, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load i64, i64* %12, align 8
  %49 = load i32, i32* %14, align 4
  %50 = call i8* @GET_MODE_NAME(i32 %49)
  %51 = call i64 @strlen(i8* %50)
  %52 = call i64 @MAX(i64 %48, i64 %51)
  store i64 %52, i64* %12, align 8
  br label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @GET_MODE_WIDER_MODE(i32 %54)
  store i32 %55, i32* %14, align 4
  br label %43

56:                                               ; preds = %43
  %57 = load i64, i64* %11, align 8
  %58 = add i64 2, %57
  %59 = load i64, i64* %12, align 8
  %60 = mul i64 2, %59
  %61 = add i64 %58, %60
  %62 = add i64 %61, 1
  %63 = add i64 %62, 1
  %64 = trunc i64 %63 to i32
  %65 = call i8* @alloca(i32 %64)
  store i8* %65, i8** %18, align 8
  %66 = load i8*, i8** %18, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  store i8 95, i8* %67, align 1
  %68 = load i8*, i8** %18, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  store i8 95, i8* %69, align 1
  %70 = load i8*, i8** %18, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 2
  %72 = load i8*, i8** %6, align 8
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @memcpy(i8* %71, i8* %72, i64 %73)
  %75 = load i8*, i8** %18, align 8
  %76 = load i64, i64* %11, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = getelementptr inbounds i8, i8* %77, i64 2
  store i8* %78, i8** %19, align 8
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %13, align 4
  br label %80

80:                                               ; preds = %153, %56
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* @VOIDmode, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %156

84:                                               ; preds = %80
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %14, align 4
  br label %86

86:                                               ; preds = %149, %84
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* @VOIDmode, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %152

90:                                               ; preds = %86
  %91 = load i32, i32* %13, align 4
  %92 = call i8* @GET_MODE_NAME(i32 %91)
  store i8* %92, i8** %15, align 8
  %93 = load i32, i32* %14, align 4
  %94 = call i8* @GET_MODE_NAME(i32 %93)
  store i8* %94, i8** %16, align 8
  %95 = load i8*, i8** %19, align 8
  store i8* %95, i8** %20, align 8
  %96 = load i8*, i8** %15, align 8
  store i8* %96, i8** %17, align 8
  br label %97

97:                                               ; preds = %106, %90
  %98 = load i8*, i8** %17, align 8
  %99 = load i8, i8* %98, align 1
  %100 = icmp ne i8 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %97
  %102 = load i8*, i8** %17, align 8
  %103 = load i8, i8* %102, align 1
  %104 = call signext i8 @TOLOWER(i8 signext %103)
  %105 = load i8*, i8** %20, align 8
  store i8 %104, i8* %105, align 1
  br label %106

106:                                              ; preds = %101
  %107 = load i8*, i8** %20, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %20, align 8
  %109 = load i8*, i8** %17, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %17, align 8
  br label %97

111:                                              ; preds = %97
  %112 = load i8*, i8** %16, align 8
  store i8* %112, i8** %17, align 8
  br label %113

113:                                              ; preds = %122, %111
  %114 = load i8*, i8** %17, align 8
  %115 = load i8, i8* %114, align 1
  %116 = icmp ne i8 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %113
  %118 = load i8*, i8** %17, align 8
  %119 = load i8, i8* %118, align 1
  %120 = call signext i8 @TOLOWER(i8 signext %119)
  %121 = load i8*, i8** %20, align 8
  store i8 %120, i8* %121, align 1
  br label %122

122:                                              ; preds = %117
  %123 = load i8*, i8** %20, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %20, align 8
  %125 = load i8*, i8** %17, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %17, align 8
  br label %113

127:                                              ; preds = %113
  %128 = load i8*, i8** %20, align 8
  store i8 0, i8* %128, align 1
  %129 = load i8*, i8** %18, align 8
  %130 = load i8*, i8** %20, align 8
  %131 = load i8*, i8** %18, align 8
  %132 = ptrtoint i8* %130 to i64
  %133 = ptrtoint i8* %131 to i64
  %134 = sub i64 %132, %133
  %135 = trunc i64 %134 to i32
  %136 = call i32 @ggc_alloc_string(i8* %129, i32 %135)
  %137 = call i32 @init_one_libfunc(i32 %136)
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %139, align 8
  %141 = load i32, i32* %14, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %140, i64 %142
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = load i32, i32* %13, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  store i32 %137, i32* %148, align 4
  br label %149

149:                                              ; preds = %127
  %150 = load i32, i32* %14, align 4
  %151 = call i32 @GET_MODE_WIDER_MODE(i32 %150)
  store i32 %151, i32* %14, align 4
  br label %86

152:                                              ; preds = %86
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %13, align 4
  %155 = call i32 @GET_MODE_WIDER_MODE(i32 %154)
  store i32 %155, i32* %13, align 4
  br label %80

156:                                              ; preds = %80
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
