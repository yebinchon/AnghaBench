; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_darwin.c_machopic_indirection_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_darwin.c_machopic_indirection_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32, i32 }

@user_label_prefix = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@STUB_SUFFIX = common dso_local global i8* null, align 8
@NON_LAZY_POINTER_SUFFIX = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"&L\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"&%sL%s%s%s%s\00", align 1
@machopic_indirections = common dso_local global i64 0, align 8
@machopic_indirection_hash = common dso_local global i32 0, align 4
@machopic_indirection_eq = common dso_local global i32 0, align 4
@INSERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @machopic_indirection_name(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i8* @XSTR(i32 %17, i32 0)
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %7, align 8
  store i32 0, i32* %10, align 4
  %22 = load i8*, i8** @user_label_prefix, align 8
  store i8* %22, i8** %13, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @maybe_get_identifier(i8* %23)
  store i64 %24, i64* %15, align 8
  %25 = load i64, i64* %15, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %2
  %28 = load i64, i64* %15, align 8
  store i64 %28, i64* %16, align 8
  br label %29

29:                                               ; preds = %33, %27
  %30 = load i64, i64* %15, align 8
  %31 = call i64 @IDENTIFIER_TRANSPARENT_ALIAS(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i64, i64* %15, align 8
  %35 = call i64 @TREE_CHAIN(i64 %34)
  store i64 %35, i64* %15, align 8
  br label %29

36:                                               ; preds = %29
  %37 = load i64, i64* %15, align 8
  %38 = load i64, i64* %16, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i64, i64* %15, align 8
  %42 = call i8* @IDENTIFIER_POINTER(i64 %41)
  store i8* %42, i8** %6, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %7, align 8
  br label %46

46:                                               ; preds = %40, %36
  br label %47

47:                                               ; preds = %46, %2
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 42
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  store i32 1, i32* %10, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = add i64 %56, -1
  store i64 %57, i64* %7, align 8
  br label %58

58:                                               ; preds = %53, %47
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @name_needs_quotes(i8* %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %64

64:                                               ; preds = %63, %58
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i8*, i8** @STUB_SUFFIX, align 8
  store i8* %68, i8** %12, align 8
  br label %71

69:                                               ; preds = %64
  %70 = load i8*, i8** @NON_LAZY_POINTER_SUFFIX, align 8
  store i8* %70, i8** %12, align 8
  br label %71

71:                                               ; preds = %69, %67
  %72 = call i32 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i8*, i8** %13, align 8
  %74 = call i32 @strlen(i8* %73)
  %75 = add nsw i32 %72, %74
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %7, align 8
  %78 = add i64 %76, %77
  %79 = load i8*, i8** %12, align 8
  %80 = call i32 @strlen(i8* %79)
  %81 = sext i32 %80 to i64
  %82 = add i64 %78, %81
  %83 = load i8*, i8** %14, align 8
  %84 = call i32 @strlen(i8* %83)
  %85 = mul nsw i32 2, %84
  %86 = sext i32 %85 to i64
  %87 = add i64 %82, %86
  %88 = add i64 %87, 1
  %89 = trunc i64 %88 to i32
  %90 = call i8* @alloca(i32 %89)
  store i8* %90, i8** %5, align 8
  %91 = load i8*, i8** %5, align 8
  %92 = load i8*, i8** %14, align 8
  %93 = load i8*, i8** %13, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = load i8*, i8** %14, align 8
  %97 = call i32 @sprintf(i8* %91, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %92, i8* %93, i8* %94, i8* %95, i8* %96)
  %98 = load i64, i64* @machopic_indirections, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %71
  %101 = load i32, i32* @machopic_indirection_hash, align 4
  %102 = load i32, i32* @machopic_indirection_eq, align 4
  %103 = call i64 @htab_create_ggc(i32 37, i32 %101, i32 %102, i32* null)
  store i64 %103, i64* @machopic_indirections, align 8
  br label %104

104:                                              ; preds = %100, %71
  %105 = load i64, i64* @machopic_indirections, align 8
  %106 = load i8*, i8** %5, align 8
  %107 = load i8*, i8** %5, align 8
  %108 = call i32 @htab_hash_string(i8* %107)
  %109 = load i32, i32* @INSERT, align 4
  %110 = call i8** @htab_find_slot_with_hash(i64 %105, i8* %106, i32 %108, i32 %109)
  store i8** %110, i8*** %9, align 8
  %111 = load i8**, i8*** %9, align 8
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %104
  %115 = load i8**, i8*** %9, align 8
  %116 = load i8*, i8** %115, align 8
  %117 = bitcast i8* %116 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %117, %struct.TYPE_2__** %8, align 8
  br label %136

118:                                              ; preds = %104
  %119 = call i64 @ggc_alloc(i32 24)
  %120 = inttoptr i64 %119 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %120, %struct.TYPE_2__** %8, align 8
  %121 = load i32, i32* %3, align 4
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 8
  %124 = load i8*, i8** %5, align 8
  %125 = call i8* @xstrdup(i8* %124)
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  store i8* %125, i8** %127, align 8
  %128 = load i32, i32* %4, align 4
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 8
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 2
  store i32 0, i32* %132, align 4
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %134 = bitcast %struct.TYPE_2__* %133 to i8*
  %135 = load i8**, i8*** %9, align 8
  store i8* %134, i8** %135, align 8
  br label %136

136:                                              ; preds = %118, %114
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  ret i8* %139
}

declare dso_local i8* @XSTR(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @maybe_get_identifier(i8*) #1

declare dso_local i64 @IDENTIFIER_TRANSPARENT_ALIAS(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i8* @IDENTIFIER_POINTER(i64) #1

declare dso_local i32 @name_needs_quotes(i8*) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @htab_create_ggc(i32, i32, i32, i32*) #1

declare dso_local i8** @htab_find_slot_with_hash(i64, i8*, i32, i32) #1

declare dso_local i32 @htab_hash_string(i8*) #1

declare dso_local i64 @ggc_alloc(i32) #1

declare dso_local i8* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
