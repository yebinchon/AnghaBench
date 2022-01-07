; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsfh.h_mk_fsid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsfh.h_mk_fsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32, i32, i32, i8*)* @mk_fsid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mk_fsid(i32 %0, i32* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %113 [
    i32 135, label %15
    i32 132, label %29
    i32 133, label %33
    i32 134, label %48
    i32 129, label %57
    i32 128, label %81
    i32 131, label %102
    i32 130, label %106
  ]

15:                                               ; preds = %6
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @MAJOR(i32 %16)
  %18 = shl i32 %17, 16
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @MINOR(i32 %19)
  %21 = or i32 %18, %20
  %22 = call i32 @htonl(i32 %21)
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @ino_t_to_u32(i32 %25)
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 %26, i32* %28, align 4
  br label %115

29:                                               ; preds = %6
  %30 = load i32, i32* %11, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %30, i32* %32, align 4
  br label %115

33:                                               ; preds = %6
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @MAJOR(i32 %34)
  %36 = call i32 @htonl(i32 %35)
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @MINOR(i32 %39)
  %41 = call i32 @htonl(i32 %40)
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @ino_t_to_u32(i32 %44)
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  store i32 %45, i32* %47, align 4
  br label %115

48:                                               ; preds = %6
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @new_encode_dev(i32 %49)
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @ino_t_to_u32(i32 %53)
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32 %54, i32* %56, align 4
  br label %115

57:                                               ; preds = %6
  %58 = load i8*, i8** %12, align 8
  %59 = bitcast i8* %58 to i32*
  store i32* %59, i32** %13, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @ino_t_to_u32(i32 %60)
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 %61, i32* %63, align 4
  %64 = load i32*, i32** %13, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %13, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = xor i32 %66, %69
  %71 = load i32*, i32** %13, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load i32, i32* %72, align 4
  %74 = xor i32 %70, %73
  %75 = load i32*, i32** %13, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 3
  %77 = load i32, i32* %76, align 4
  %78 = xor i32 %74, %77
  %79 = load i32*, i32** %8, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  store i32 %78, i32* %80, align 4
  br label %115

81:                                               ; preds = %6
  %82 = load i8*, i8** %12, align 8
  %83 = bitcast i8* %82 to i32*
  store i32* %83, i32** %13, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %13, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  %89 = load i32, i32* %88, align 4
  %90 = xor i32 %86, %89
  %91 = load i32*, i32** %8, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  store i32 %90, i32* %92, align 4
  %93 = load i32*, i32** %13, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %13, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 3
  %98 = load i32, i32* %97, align 4
  %99 = xor i32 %95, %98
  %100 = load i32*, i32** %8, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  store i32 %99, i32* %101, align 4
  br label %115

102:                                              ; preds = %6
  %103 = load i32*, i32** %8, align 8
  %104 = load i8*, i8** %12, align 8
  %105 = call i32 @memcpy(i32* %103, i8* %104, i32 16)
  br label %115

106:                                              ; preds = %6
  %107 = load i32, i32* %10, align 4
  %108 = load i32*, i32** %8, align 8
  store i32 %107, i32* %108, align 4
  %109 = load i32*, i32** %8, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  %111 = load i8*, i8** %12, align 8
  %112 = call i32 @memcpy(i32* %110, i8* %111, i32 16)
  br label %115

113:                                              ; preds = %6
  %114 = call i32 (...) @BUG()
  br label %115

115:                                              ; preds = %113, %106, %102, %81, %57, %48, %33, %29, %15
  ret void
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @ino_t_to_u32(i32) #1

declare dso_local i32 @new_encode_dev(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
