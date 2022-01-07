; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_srec.c_srec_write_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_srec.c_srec_write_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXCHUNK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*, i32*)* @srec_write_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srec_write_record(i32* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %18 = load i32, i32* @MAXCHUNK, align 4
  %19 = mul nsw i32 2, %18
  %20 = add nsw i32 %19, 6
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %11, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %24 = load i32*, i32** %9, align 8
  store i32* %24, i32** %14, align 8
  store i8* %23, i8** %15, align 8
  %25 = load i8*, i8** %15, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %15, align 8
  store i8 83, i8* %25, align 1
  %27 = load i32, i32* %7, align 4
  %28 = add i32 48, %27
  %29 = trunc i32 %28 to i8
  %30 = load i8*, i8** %15, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %15, align 8
  store i8 %29, i8* %30, align 1
  %32 = load i8*, i8** %15, align 8
  store i8* %32, i8** %16, align 8
  %33 = load i8*, i8** %15, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  store i8* %34, i8** %15, align 8
  %35 = load i32, i32* %7, align 4
  switch i32 %35, label %66 [
    i32 3, label %36
    i32 7, label %36
    i32 8, label %44
    i32 2, label %44
    i32 9, label %52
    i32 1, label %52
    i32 0, label %52
  ]

36:                                               ; preds = %5, %5
  %37 = load i8*, i8** %15, align 8
  %38 = load i32, i32* %8, align 4
  %39 = ashr i32 %38, 24
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @TOHEX(i8* %37, i32 %39, i32 %40)
  %42 = load i8*, i8** %15, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  store i8* %43, i8** %15, align 8
  br label %44

44:                                               ; preds = %5, %5, %36
  %45 = load i8*, i8** %15, align 8
  %46 = load i32, i32* %8, align 4
  %47 = ashr i32 %46, 16
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @TOHEX(i8* %45, i32 %47, i32 %48)
  %50 = load i8*, i8** %15, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  store i8* %51, i8** %15, align 8
  br label %52

52:                                               ; preds = %5, %5, %5, %44
  %53 = load i8*, i8** %15, align 8
  %54 = load i32, i32* %8, align 4
  %55 = ashr i32 %54, 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @TOHEX(i8* %53, i32 %55, i32 %56)
  %58 = load i8*, i8** %15, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  store i8* %59, i8** %15, align 8
  %60 = load i8*, i8** %15, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @TOHEX(i8* %60, i32 %61, i32 %62)
  %64 = load i8*, i8** %15, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  store i8* %65, i8** %15, align 8
  br label %66

66:                                               ; preds = %5, %52
  %67 = load i32*, i32** %9, align 8
  store i32* %67, i32** %14, align 8
  br label %68

68:                                               ; preds = %80, %66
  %69 = load i32*, i32** %14, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = icmp ult i32* %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = load i8*, i8** %15, align 8
  %74 = load i32*, i32** %14, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @TOHEX(i8* %73, i32 %75, i32 %76)
  %78 = load i8*, i8** %15, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  store i8* %79, i8** %15, align 8
  br label %80

80:                                               ; preds = %72
  %81 = load i32*, i32** %14, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %14, align 8
  br label %68

83:                                               ; preds = %68
  %84 = load i8*, i8** %16, align 8
  %85 = load i8*, i8** %15, align 8
  %86 = load i8*, i8** %16, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = sdiv i64 %89, 2
  %91 = trunc i64 %90 to i32
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @TOHEX(i8* %84, i32 %91, i32 %92)
  %94 = load i32, i32* %13, align 4
  %95 = and i32 %94, 255
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = sub i32 255, %96
  store i32 %97, i32* %13, align 4
  %98 = load i8*, i8** %15, align 8
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @TOHEX(i8* %98, i32 %99, i32 %100)
  %102 = load i8*, i8** %15, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 2
  store i8* %103, i8** %15, align 8
  %104 = load i8*, i8** %15, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %15, align 8
  store i8 13, i8* %104, align 1
  %106 = load i8*, i8** %15, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %15, align 8
  store i8 10, i8* %106, align 1
  %108 = load i8*, i8** %15, align 8
  %109 = ptrtoint i8* %108 to i64
  %110 = ptrtoint i8* %23 to i64
  %111 = sub i64 %109, %110
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %17, align 4
  %113 = load i32, i32* %17, align 4
  %114 = load i32*, i32** %6, align 8
  %115 = call i32 @bfd_bwrite(i8* %23, i32 %113, i32* %114)
  %116 = load i32, i32* %17, align 4
  %117 = icmp eq i32 %115, %116
  %118 = zext i1 %117 to i32
  %119 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %119)
  ret i32 %118
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TOHEX(i8*, i32, i32) #2

declare dso_local i32 @bfd_bwrite(i8*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
