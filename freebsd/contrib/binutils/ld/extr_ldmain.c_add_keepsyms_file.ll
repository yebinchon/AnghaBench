; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldmain.c_add_keepsyms_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldmain.c_add_keepsyms_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8* }

@link_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@strip_some = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"%X%P: error: duplicate retain-symbols-file\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@bfd_error_system_call = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"%X%P: %s: %E\0A\00", align 1
@bfd_hash_newfunc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"%P%F: bfd_hash_table_init failed: %E\0A\00", align 1
@EOF = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"%P%F: bfd_hash_lookup for insertion failed: %E\0A\00", align 1
@strip_none = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [52 x i8] c"%P: `-retain-symbols-file' overrides `-s' and `-S'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_keepsyms_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @link_info, i32 0, i32 0), align 8
  %9 = load i64, i64* @strip_some, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 (i8*, ...) @einfo(i8* %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load i8*, i8** %2, align 8
  %18 = call i32* @fopen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %18, i32** %3, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32, i32* @bfd_error_system_call, align 4
  %23 = call i32 @bfd_set_error(i32 %22)
  %24 = load i8*, i8** %2, align 8
  %25 = call i32 (i8*, ...) @einfo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  br label %119

26:                                               ; preds = %16
  %27 = call i8* @xmalloc(i64 4)
  store i8* %27, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @link_info, i32 0, i32 1), align 8
  %28 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @link_info, i32 0, i32 1), align 8
  %29 = load i32, i32* @bfd_hash_newfunc, align 4
  %30 = call i32 @bfd_hash_table_init(i8* %28, i32 %29, i32 4)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 (i8*, ...) @einfo(i8* %35)
  br label %37

37:                                               ; preds = %32, %26
  store i64 100, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i8* @xmalloc(i64 %38)
  store i8* %39, i8** %4, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @getc(i32* %40)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %105, %37
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @EOF, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %106

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %51, %46
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @ISSPACE(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @getc(i32* %52)
  store i32 %53, i32* %6, align 4
  br label %47

54:                                               ; preds = %47
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @EOF, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %105

58:                                               ; preds = %54
  store i64 0, i64* %7, align 8
  br label %59

59:                                               ; preds = %86, %58
  %60 = load i32, i32* %6, align 4
  %61 = call i64 @ISSPACE(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @EOF, align 4
  %66 = icmp ne i32 %64, %65
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i1 [ false, %59 ], [ %66, %63 ]
  br i1 %68, label %69, label %89

69:                                               ; preds = %67
  %70 = load i32, i32* %6, align 4
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** %4, align 8
  %73 = load i64, i64* %7, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8 %71, i8* %74, align 1
  %75 = load i64, i64* %7, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %7, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* %5, align 8
  %79 = icmp uge i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %69
  %81 = load i64, i64* %5, align 8
  %82 = mul i64 %81, 2
  store i64 %82, i64* %5, align 8
  %83 = load i8*, i8** %4, align 8
  %84 = load i64, i64* %5, align 8
  %85 = call i8* @xrealloc(i8* %83, i64 %84)
  store i8* %85, i8** %4, align 8
  br label %86

86:                                               ; preds = %80, %69
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 @getc(i32* %87)
  store i32 %88, i32* %6, align 4
  br label %59

89:                                               ; preds = %67
  %90 = load i8*, i8** %4, align 8
  %91 = load i64, i64* %7, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8 0, i8* %92, align 1
  %93 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @link_info, i32 0, i32 1), align 8
  %94 = load i8*, i8** %4, align 8
  %95 = load i32, i32* @TRUE, align 4
  %96 = load i32, i32* @TRUE, align 4
  %97 = call i32* @bfd_hash_lookup(i8* %93, i8* %94, i32 %95, i32 %96)
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %89
  %100 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to i8*
  %103 = call i32 (i8*, ...) @einfo(i8* %102)
  br label %104

104:                                              ; preds = %99, %89
  br label %105

105:                                              ; preds = %104, %54
  br label %42

106:                                              ; preds = %42
  %107 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @link_info, i32 0, i32 0), align 8
  %108 = load i64, i64* @strip_none, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %106
  %111 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  %112 = sext i32 %111 to i64
  %113 = inttoptr i64 %112 to i8*
  %114 = call i32 (i8*, ...) @einfo(i8* %113)
  br label %115

115:                                              ; preds = %110, %106
  %116 = load i8*, i8** %4, align 8
  %117 = call i32 @free(i8* %116)
  %118 = load i64, i64* @strip_some, align 8
  store i64 %118, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @link_info, i32 0, i32 0), align 8
  br label %119

119:                                              ; preds = %115, %21
  ret void
}

declare dso_local i32 @einfo(i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @bfd_hash_table_init(i8*, i32, i32) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i64 @ISSPACE(i32) #1

declare dso_local i8* @xrealloc(i8*, i64) #1

declare dso_local i32* @bfd_hash_lookup(i8*, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
