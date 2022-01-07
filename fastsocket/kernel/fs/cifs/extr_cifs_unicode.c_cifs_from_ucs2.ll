; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifs_unicode.c_cifs_from_ucs2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifs_unicode.c_cifs_from_ucs2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nls_table = type { i32 }

@NLS_MAX_CHARSET_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_from_ucs2(i8* %0, i32* %1, i32 %2, i32 %3, %struct.nls_table* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nls_table*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.nls_table* %4, %struct.nls_table** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %16, align 4
  %22 = load %struct.nls_table*, %struct.nls_table** %11, align 8
  %23 = call i32 @nls_nullsize(%struct.nls_table* %22)
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* %10, align 4
  %25 = sdiv i32 %24, 2
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* @NLS_MAX_CHARSET_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %19, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %20, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @NLS_MAX_CHARSET_SIZE, align 4
  %32 = load i32, i32* %17, align 4
  %33 = add nsw i32 %31, %32
  %34 = sub nsw i32 %30, %33
  store i32 %34, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %35

35:                                               ; preds = %78, %6
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %18, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %81

39:                                               ; preds = %35
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = call i64 @get_unaligned_le16(i32* %43)
  store i64 %44, i64* %21, align 8
  %45 = load i64, i64* %21, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %81

48:                                               ; preds = %39
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = load i64, i64* %21, align 8
  %54 = load %struct.nls_table*, %struct.nls_table** %11, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @cifs_mapchar(i8* %29, i64 %53, %struct.nls_table* %54, i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %14, align 4
  %59 = add nsw i32 %57, %58
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %17, align 4
  %62 = sub nsw i32 %60, %61
  %63 = icmp sgt i32 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  br label %81

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65, %48
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %16, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i64, i64* %21, align 8
  %72 = load %struct.nls_table*, %struct.nls_table** %11, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @cifs_mapchar(i8* %70, i64 %71, %struct.nls_table* %72, i32 %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %16, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %16, align 4
  br label %78

78:                                               ; preds = %66
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %13, align 4
  br label %35

81:                                               ; preds = %64, %47, %35
  store i32 0, i32* %13, align 4
  br label %82

82:                                               ; preds = %92, %81
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %17, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %82
  %87 = load i8*, i8** %7, align 8
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %16, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  store i8 0, i8* %91, align 1
  br label %92

92:                                               ; preds = %86
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %82

95:                                               ; preds = %82
  %96 = load i32, i32* %16, align 4
  %97 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %97)
  ret i32 %96
}

declare dso_local i32 @nls_nullsize(%struct.nls_table*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @get_unaligned_le16(i32*) #1

declare dso_local i32 @cifs_mapchar(i8*, i64, %struct.nls_table*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
