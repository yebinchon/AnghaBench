; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifs_unicode.c_cifsConvertToUCS.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifs_unicode.c_cifsConvertToUCS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nls_table = type { i32 (i8*, i32, i32*)* }

@PATH_MAX = common dso_local global i32 0, align 4
@UNI_COLON = common dso_local global i32 0, align 4
@UNI_ASTERISK = common dso_local global i32 0, align 4
@UNI_QUESTION = common dso_local global i32 0, align 4
@UNI_LESSTHAN = common dso_local global i32 0, align 4
@UNI_GRTRTHAN = common dso_local global i32 0, align 4
@UNI_PIPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifsConvertToUCS(i32* %0, i8* %1, i32 %2, %struct.nls_table* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nls_table*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.nls_table* %3, %struct.nls_table** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %5
  %21 = load i32*, i32** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* @PATH_MAX, align 4
  %24 = load %struct.nls_table*, %struct.nls_table** %10, align 8
  %25 = call i32 @cifs_strtoUCS(i32* %21, i8* %22, i32 %23, %struct.nls_table* %24)
  store i32 %25, i32* %6, align 4
  br label %98

26:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %92, %26
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %95

31:                                               ; preds = %27
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  store i8 %36, i8* %15, align 1
  store i32 1, i32* %14, align 4
  %37 = load i8, i8* %15, align 1
  %38 = sext i8 %37 to i32
  switch i32 %38, label %63 [
    i32 0, label %39
    i32 58, label %45
    i32 42, label %48
    i32 63, label %51
    i32 60, label %54
    i32 62, label %57
    i32 124, label %60
  ]

39:                                               ; preds = %31
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = call i32 @put_unaligned(i32 0, i32* %43)
  br label %96

45:                                               ; preds = %31
  %46 = load i32, i32* @UNI_COLON, align 4
  %47 = call i32 @cpu_to_le16(i32 %46)
  store i32 %47, i32* %16, align 4
  br label %82

48:                                               ; preds = %31
  %49 = load i32, i32* @UNI_ASTERISK, align 4
  %50 = call i32 @cpu_to_le16(i32 %49)
  store i32 %50, i32* %16, align 4
  br label %82

51:                                               ; preds = %31
  %52 = load i32, i32* @UNI_QUESTION, align 4
  %53 = call i32 @cpu_to_le16(i32 %52)
  store i32 %53, i32* %16, align 4
  br label %82

54:                                               ; preds = %31
  %55 = load i32, i32* @UNI_LESSTHAN, align 4
  %56 = call i32 @cpu_to_le16(i32 %55)
  store i32 %56, i32* %16, align 4
  br label %82

57:                                               ; preds = %31
  %58 = load i32, i32* @UNI_GRTRTHAN, align 4
  %59 = call i32 @cpu_to_le16(i32 %58)
  store i32 %59, i32* %16, align 4
  br label %82

60:                                               ; preds = %31
  %61 = load i32, i32* @UNI_PIPE, align 4
  %62 = call i32 @cpu_to_le16(i32 %61)
  store i32 %62, i32* %16, align 4
  br label %82

63:                                               ; preds = %31
  %64 = load %struct.nls_table*, %struct.nls_table** %10, align 8
  %65 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %64, i32 0, i32 0
  %66 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %65, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %12, align 4
  %73 = sub nsw i32 %71, %72
  %74 = call i32 %66(i8* %70, i32 %73, i32* %17)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %17, align 4
  %76 = call i32 @cpu_to_le16(i32 %75)
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp slt i32 %77, 1
  br i1 %78, label %79, label %81

79:                                               ; preds = %63
  %80 = call i32 @cpu_to_le16(i32 63)
  store i32 %80, i32* %16, align 4
  store i32 1, i32* %14, align 4
  br label %81

81:                                               ; preds = %79, %63
  br label %82

82:                                               ; preds = %81, %60, %57, %54, %51, %48, %45
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %16, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = call i32 @put_unaligned(i32 %86, i32* %90)
  br label %92

92:                                               ; preds = %82
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %27

95:                                               ; preds = %27
  br label %96

96:                                               ; preds = %95, %39
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %96, %20
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @cifs_strtoUCS(i32*, i8*, i32, %struct.nls_table*) #1

declare dso_local i32 @put_unaligned(i32, i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
