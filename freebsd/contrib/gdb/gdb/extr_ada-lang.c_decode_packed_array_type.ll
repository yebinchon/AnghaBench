; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_decode_packed_array_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_decode_packed_array_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.symbol = type { i32 }
%struct.block = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"___XP\00", align 1
@VAR_DOMAIN = common dso_local global i32 0, align 4
@LOC_TYPEDEF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"could not find bounds information on packed array\00", align 1
@TYPE_CODE_ARRAY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"could not understand bounds information on packed array\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"could not understand bit size information on packed array\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (%struct.type*)* @decode_packed_array_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @decode_packed_array_type(%struct.type* %0) #0 {
  %2 = alloca %struct.type*, align 8
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.symbol**, align 8
  %5 = alloca %struct.block**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.type*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %3, align 8
  %13 = load %struct.type*, %struct.type** %3, align 8
  %14 = call %struct.type* @check_typedef(%struct.type* %13)
  %15 = call i8* @ada_type_name(%struct.type* %14)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = add nsw i64 %17, 1
  %19 = call i64 @alloca(i64 %18)
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i8* @strstr(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = trunc i64 %29 to i32
  %31 = call i32 @memcpy(i8* %23, i8* %24, i32 %30)
  %32 = load i8*, i8** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = getelementptr inbounds i8, i8* %32, i64 %37
  store i8 0, i8* %38, align 1
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @get_selected_block(i32* null)
  %41 = load i32, i32* @VAR_DOMAIN, align 4
  %42 = call i32 @ada_lookup_symbol_list(i8* %39, i32 %40, i32 %41, %struct.symbol*** %4, %struct.block*** %5)
  store i32 %42, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %76, %1
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %79

47:                                               ; preds = %43
  %48 = load %struct.symbol**, %struct.symbol*** %4, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.symbol*, %struct.symbol** %48, i64 %50
  %52 = load %struct.symbol*, %struct.symbol** %51, align 8
  %53 = icmp ne %struct.symbol* %52, null
  br i1 %53, label %54, label %75

54:                                               ; preds = %47
  %55 = load %struct.symbol**, %struct.symbol*** %4, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.symbol*, %struct.symbol** %55, i64 %57
  %59 = load %struct.symbol*, %struct.symbol** %58, align 8
  %60 = call i64 @SYMBOL_CLASS(%struct.symbol* %59)
  %61 = load i64, i64* @LOC_TYPEDEF, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %54
  %64 = load i8*, i8** %7, align 8
  %65 = load %struct.symbol**, %struct.symbol*** %4, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.symbol*, %struct.symbol** %65, i64 %67
  %69 = load %struct.symbol*, %struct.symbol** %68, align 8
  %70 = call %struct.type* @SYMBOL_TYPE(%struct.symbol* %69)
  %71 = call i8* @ada_type_name(%struct.type* %70)
  %72 = call i64 @DEPRECATED_STREQ(i8* %64, i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  br label %79

75:                                               ; preds = %63, %54, %47
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %43

79:                                               ; preds = %74, %43
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = call i32 @warning(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  store %struct.type* null, %struct.type** %2, align 8
  br label %109

85:                                               ; preds = %79
  %86 = load %struct.symbol**, %struct.symbol*** %4, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.symbol*, %struct.symbol** %86, i64 %88
  %90 = load %struct.symbol*, %struct.symbol** %89, align 8
  %91 = call %struct.type* @SYMBOL_TYPE(%struct.symbol* %90)
  store %struct.type* %91, %struct.type** %9, align 8
  %92 = load %struct.type*, %struct.type** %9, align 8
  %93 = call i64 @TYPE_CODE(%struct.type* %92)
  %94 = load i64, i64* @TYPE_CODE_ARRAY, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %85
  %97 = call i32 @warning(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  store %struct.type* null, %struct.type** %2, align 8
  br label %109

98:                                               ; preds = %85
  %99 = load i8*, i8** %8, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 6
  %101 = getelementptr inbounds i8, i8* %100, i64 -1
  %102 = call i32 @sscanf(i8* %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64* %10)
  %103 = icmp ne i32 %102, 1
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = call i32 @warning(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  store %struct.type* null, %struct.type** %2, align 8
  br label %109

106:                                              ; preds = %98
  %107 = load %struct.type*, %struct.type** %9, align 8
  %108 = call %struct.type* @packed_array_type(%struct.type* %107, i64* %10)
  store %struct.type* %108, %struct.type** %2, align 8
  br label %109

109:                                              ; preds = %106, %104, %96, %83
  %110 = load %struct.type*, %struct.type** %2, align 8
  ret %struct.type* %110
}

declare dso_local i8* @ada_type_name(%struct.type*) #1

declare dso_local %struct.type* @check_typedef(%struct.type*) #1

declare dso_local i64 @alloca(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ada_lookup_symbol_list(i8*, i32, i32, %struct.symbol***, %struct.block***) #1

declare dso_local i32 @get_selected_block(i32*) #1

declare dso_local i64 @SYMBOL_CLASS(%struct.symbol*) #1

declare dso_local i64 @DEPRECATED_STREQ(i8*, i8*) #1

declare dso_local %struct.type* @SYMBOL_TYPE(%struct.symbol*) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

declare dso_local %struct.type* @packed_array_type(%struct.type*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
