; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c_bfd_wrapped_link_hash_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c_bfd_wrapped_link_hash_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_hash_entry = type { i32 }
%struct.bfd_link_info = type { i8, i32, i32* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"__wrap_\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"__real_\00", align 1
@REAL = common dso_local global i32 0, align 4
@WRAP = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bfd_link_hash_entry* @bfd_wrapped_link_hash_lookup(i32* %0, %struct.bfd_link_info* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.bfd_link_hash_entry*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.bfd_link_info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i8*, align 8
  %18 = alloca %struct.bfd_link_hash_entry*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.bfd_link_hash_entry*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = load %struct.bfd_link_info*, %struct.bfd_link_info** %9, align 8
  %22 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %143

25:                                               ; preds = %6
  store i8 0, i8* %16, align 1
  %26 = load i8*, i8** %10, align 8
  store i8* %26, i8** %15, align 8
  %27 = load i8*, i8** %15, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = load i32*, i32** %8, align 8
  %31 = call signext i8 @bfd_get_symbol_leading_char(i32* %30)
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %43, label %34

34:                                               ; preds = %25
  %35 = load i8*, i8** %15, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = load %struct.bfd_link_info*, %struct.bfd_link_info** %9, align 8
  %39 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %38, i32 0, i32 0
  %40 = load i8, i8* %39, align 8
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %37, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %34, %25
  %44 = load i8*, i8** %15, align 8
  %45 = load i8, i8* %44, align 1
  store i8 %45, i8* %16, align 1
  %46 = load i8*, i8** %15, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %15, align 8
  br label %48

48:                                               ; preds = %43, %34
  %49 = load %struct.bfd_link_info*, %struct.bfd_link_info** %9, align 8
  %50 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i8*, i8** %15, align 8
  %53 = load i32, i32* @FALSE, align 4
  %54 = load i32, i32* @FALSE, align 4
  %55 = call i32* @bfd_hash_lookup(i32* %51, i8* %52, i32 %53, i32 %54)
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %89

57:                                               ; preds = %48
  %58 = load i8*, i8** %15, align 8
  %59 = call i64 @strlen(i8* %58)
  %60 = add i64 %59, 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %14, align 8
  %62 = load i64, i64* %14, align 8
  %63 = call i8* @bfd_malloc(i64 %62)
  store i8* %63, i8** %17, align 8
  %64 = load i8*, i8** %17, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  store %struct.bfd_link_hash_entry* null, %struct.bfd_link_hash_entry** %7, align 8
  br label %152

67:                                               ; preds = %57
  %68 = load i8, i8* %16, align 1
  %69 = load i8*, i8** %17, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  store i8 %68, i8* %70, align 1
  %71 = load i8*, i8** %17, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  store i8 0, i8* %72, align 1
  %73 = load i8*, i8** %17, align 8
  %74 = call i32 @strcat(i8* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %75 = load i8*, i8** %17, align 8
  %76 = load i8*, i8** %15, align 8
  %77 = call i32 @strcat(i8* %75, i8* %76)
  %78 = load %struct.bfd_link_info*, %struct.bfd_link_info** %9, align 8
  %79 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %17, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @TRUE, align 4
  %84 = load i32, i32* %13, align 4
  %85 = call %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32 %80, i8* %81, i32 %82, i32 %83, i32 %84)
  store %struct.bfd_link_hash_entry* %85, %struct.bfd_link_hash_entry** %18, align 8
  %86 = load i8*, i8** %17, align 8
  %87 = call i32 @free(i8* %86)
  %88 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %18, align 8
  store %struct.bfd_link_hash_entry* %88, %struct.bfd_link_hash_entry** %7, align 8
  br label %152

89:                                               ; preds = %48
  %90 = load i8*, i8** %15, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 95
  br i1 %93, label %94, label %142

94:                                               ; preds = %89
  %95 = load i8*, i8** %15, align 8
  %96 = call i64 @CONST_STRNEQ(i8* %95, i32 ptrtoint ([8 x i8]* @.str.1 to i32))
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %142

98:                                               ; preds = %94
  %99 = load %struct.bfd_link_info*, %struct.bfd_link_info** %9, align 8
  %100 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load i8*, i8** %15, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 8
  %104 = getelementptr inbounds i8, i8* %103, i64 -1
  %105 = load i32, i32* @FALSE, align 4
  %106 = load i32, i32* @FALSE, align 4
  %107 = call i32* @bfd_hash_lookup(i32* %101, i8* %104, i32 %105, i32 %106)
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %142

109:                                              ; preds = %98
  %110 = load i8*, i8** %15, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 8
  %112 = getelementptr inbounds i8, i8* %111, i64 -1
  %113 = call i64 @strlen(i8* %112)
  %114 = add nsw i64 %113, 2
  store i64 %114, i64* %14, align 8
  %115 = load i64, i64* %14, align 8
  %116 = call i8* @bfd_malloc(i64 %115)
  store i8* %116, i8** %19, align 8
  %117 = load i8*, i8** %19, align 8
  %118 = icmp eq i8* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %109
  store %struct.bfd_link_hash_entry* null, %struct.bfd_link_hash_entry** %7, align 8
  br label %152

120:                                              ; preds = %109
  %121 = load i8, i8* %16, align 1
  %122 = load i8*, i8** %19, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 0
  store i8 %121, i8* %123, align 1
  %124 = load i8*, i8** %19, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  store i8 0, i8* %125, align 1
  %126 = load i8*, i8** %19, align 8
  %127 = load i8*, i8** %15, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 8
  %129 = getelementptr inbounds i8, i8* %128, i64 -1
  %130 = call i32 @strcat(i8* %126, i8* %129)
  %131 = load %struct.bfd_link_info*, %struct.bfd_link_info** %9, align 8
  %132 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i8*, i8** %19, align 8
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* @TRUE, align 4
  %137 = load i32, i32* %13, align 4
  %138 = call %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32 %133, i8* %134, i32 %135, i32 %136, i32 %137)
  store %struct.bfd_link_hash_entry* %138, %struct.bfd_link_hash_entry** %20, align 8
  %139 = load i8*, i8** %19, align 8
  %140 = call i32 @free(i8* %139)
  %141 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %20, align 8
  store %struct.bfd_link_hash_entry* %141, %struct.bfd_link_hash_entry** %7, align 8
  br label %152

142:                                              ; preds = %98, %94, %89
  br label %143

143:                                              ; preds = %142, %6
  %144 = load %struct.bfd_link_info*, %struct.bfd_link_info** %9, align 8
  %145 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i8*, i8** %10, align 8
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* %13, align 4
  %151 = call %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32 %146, i8* %147, i32 %148, i32 %149, i32 %150)
  store %struct.bfd_link_hash_entry* %151, %struct.bfd_link_hash_entry** %7, align 8
  br label %152

152:                                              ; preds = %143, %120, %119, %67, %66
  %153 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %7, align 8
  ret %struct.bfd_link_hash_entry* %153
}

declare dso_local signext i8 @bfd_get_symbol_leading_char(i32*) #1

declare dso_local i32* @bfd_hash_lookup(i32*, i8*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @bfd_malloc(i64) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @CONST_STRNEQ(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
