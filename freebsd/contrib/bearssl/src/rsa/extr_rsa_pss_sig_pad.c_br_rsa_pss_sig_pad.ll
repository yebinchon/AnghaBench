; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_pss_sig_pad.c_br_rsa_pss_sig_pad.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_pss_sig_pad.c_br_rsa_pss_sig_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__**, i8*, i64)* }
%struct.TYPE_12__ = type { i32 (i32*, i8*)*, i32 (i32*, i8*, i64)*, i32 (i32*)* }
%struct.TYPE_11__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_rsa_pss_sig_pad(%struct.TYPE_10__** %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2, i8* %3, i64 %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__**, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_11__, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store %struct.TYPE_10__** %0, %struct.TYPE_10__*** %9, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %22 = call i64 @br_digest_size(%struct.TYPE_12__* %21)
  store i64 %22, i64* %17, align 8
  %23 = load i32, i32* %14, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = and i32 %25, 7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %7
  %29 = load i8*, i8** %15, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %15, align 8
  store i8 0, i8* %29, align 1
  br label %31

31:                                               ; preds = %28, %7
  %32 = load i32, i32* %14, align 4
  %33 = add nsw i32 %32, 7
  %34 = ashr i32 %33, 3
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %16, align 8
  %36 = load i64, i64* %17, align 8
  %37 = load i64, i64* %16, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %50, label %39

39:                                               ; preds = %31
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* %16, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* %17, align 8
  %45 = load i64, i64* %13, align 8
  %46 = add i64 %44, %45
  %47 = add i64 %46, 2
  %48 = load i64, i64* %16, align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43, %39, %31
  store i32 0, i32* %8, align 4
  br label %155

51:                                               ; preds = %43
  %52 = load i8*, i8** %15, align 8
  %53 = load i64, i64* %16, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load i64, i64* %17, align 8
  %56 = sub i64 0, %55
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i64, i64* %13, align 8
  %59 = sub i64 0, %58
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = getelementptr inbounds i8, i8* %60, i64 -1
  store i8* %61, i8** %19, align 8
  %62 = load i64, i64* %13, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %51
  %65 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32 (%struct.TYPE_10__**, i8*, i64)*, i32 (%struct.TYPE_10__**, i8*, i64)** %67, align 8
  %69 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %70 = load i8*, i8** %19, align 8
  %71 = load i64, i64* %13, align 8
  %72 = call i32 %68(%struct.TYPE_10__** %69, i8* %70, i64 %71)
  br label %73

73:                                               ; preds = %64, %51
  %74 = load i8*, i8** %15, align 8
  %75 = load i64, i64* %16, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  %77 = load i64, i64* %17, align 8
  %78 = sub i64 0, %77
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = getelementptr inbounds i8, i8* %79, i64 -1
  store i8* %80, i8** %20, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 2
  %83 = load i32 (i32*)*, i32 (i32*)** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %85 = call i32 %83(i32* %84)
  %86 = load i8*, i8** %20, align 8
  %87 = call i32 @memset(i8* %86, i32 0, i64 8)
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64)** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %92 = load i8*, i8** %20, align 8
  %93 = call i32 %90(i32* %91, i8* %92, i64 8)
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = load i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64)** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %98 = load i8*, i8** %12, align 8
  %99 = load i64, i64* %17, align 8
  %100 = call i32 %96(i32* %97, i8* %98, i64 %99)
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = load i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64)** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %105 = load i8*, i8** %19, align 8
  %106 = load i64, i64* %13, align 8
  %107 = call i32 %103(i32* %104, i8* %105, i64 %106)
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %112 = load i8*, i8** %20, align 8
  %113 = call i32 %110(i32* %111, i8* %112)
  %114 = load i8*, i8** %15, align 8
  %115 = load i64, i64* %16, align 8
  %116 = load i64, i64* %13, align 8
  %117 = sub i64 %115, %116
  %118 = load i64, i64* %17, align 8
  %119 = sub i64 %117, %118
  %120 = sub i64 %119, 2
  %121 = call i32 @memset(i8* %114, i32 0, i64 %120)
  %122 = load i8*, i8** %15, align 8
  %123 = load i64, i64* %16, align 8
  %124 = load i64, i64* %13, align 8
  %125 = sub i64 %123, %124
  %126 = load i64, i64* %17, align 8
  %127 = sub i64 %125, %126
  %128 = sub i64 %127, 2
  %129 = getelementptr inbounds i8, i8* %122, i64 %128
  store i8 1, i8* %129, align 1
  %130 = load i8*, i8** %15, align 8
  %131 = load i64, i64* %16, align 8
  %132 = load i64, i64* %17, align 8
  %133 = sub i64 %131, %132
  %134 = sub i64 %133, 1
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %136 = load i8*, i8** %20, align 8
  %137 = load i64, i64* %17, align 8
  %138 = call i32 @br_mgf1_xor(i8* %130, i64 %134, %struct.TYPE_12__* %135, i8* %136, i64 %137)
  %139 = load i64, i64* %16, align 8
  %140 = trunc i64 %139 to i32
  %141 = shl i32 %140, 3
  %142 = load i32, i32* %14, align 4
  %143 = sub nsw i32 %141, %142
  %144 = ashr i32 255, %143
  %145 = load i8*, i8** %15, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 0
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = and i32 %148, %144
  %150 = trunc i32 %149 to i8
  store i8 %150, i8* %146, align 1
  %151 = load i8*, i8** %15, align 8
  %152 = load i64, i64* %16, align 8
  %153 = sub i64 %152, 1
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  store i8 -68, i8* %154, align 1
  store i32 1, i32* %8, align 4
  br label %155

155:                                              ; preds = %73, %50
  %156 = load i32, i32* %8, align 4
  ret i32 %156
}

declare dso_local i64 @br_digest_size(%struct.TYPE_12__*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @br_mgf1_xor(i8*, i64, %struct.TYPE_12__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
