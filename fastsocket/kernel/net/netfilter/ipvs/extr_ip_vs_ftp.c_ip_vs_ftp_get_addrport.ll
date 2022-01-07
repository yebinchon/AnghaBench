; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ftp.c_ip_vs_ftp_get_addrport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ftp.c_ip_vs_ftp_get_addrport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i64, i8, i32*, i32*, i8**, i8**)* @ip_vs_ftp_get_addrport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_ftp_get_addrport(i8* %0, i8* %1, i8* %2, i64 %3, i8 signext %4, i32* %5, i32* %6, i8** %7, i8** %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8, align 1
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i8**, align 8
  %20 = alloca [6 x i8], align 1
  %21 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store i64 %3, i64* %14, align 8
  store i8 %4, i8* %15, align 1
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i8** %7, i8*** %18, align 8
  store i8** %8, i8*** %19, align 8
  store i32 0, i32* %21, align 4
  %22 = load i8*, i8** %12, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = ptrtoint i8* %22 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = load i64, i64* %14, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %9
  %30 = load i8*, i8** %11, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = call i64 @strnicmp(i8* %30, i8* %31, i64 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i32 -1, i32* %10, align 4
  br label %140

40:                                               ; preds = %29
  store i32 0, i32* %10, align 4
  br label %140

41:                                               ; preds = %9
  %42 = load i8*, i8** %11, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = load i64, i64* %14, align 8
  %45 = call i64 @strnicmp(i8* %42, i8* %43, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 0, i32* %10, align 4
  br label %140

48:                                               ; preds = %41
  %49 = load i8*, i8** %11, align 8
  %50 = load i64, i64* %14, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i8**, i8*** %18, align 8
  store i8* %51, i8** %52, align 8
  %53 = load i8**, i8*** %18, align 8
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %11, align 8
  br label %55

55:                                               ; preds = %68, %48
  %56 = load i8*, i8** %11, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = load i8, i8* %15, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %55
  %63 = load i8*, i8** %11, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = icmp eq i8* %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 -1, i32* %10, align 4
  br label %140

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67
  %69 = load i8*, i8** %11, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %11, align 8
  br label %55

71:                                               ; preds = %55
  %72 = load i8*, i8** %11, align 8
  %73 = load i8**, i8*** %19, align 8
  store i8* %72, i8** %73, align 8
  %74 = getelementptr inbounds [6 x i8], [6 x i8]* %20, i64 0, i64 0
  %75 = call i32 @memset(i8* %74, i32 0, i32 6)
  %76 = load i8**, i8*** %18, align 8
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %11, align 8
  br label %78

78:                                               ; preds = %123, %71
  %79 = load i8*, i8** %11, align 8
  %80 = load i8**, i8*** %19, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %79, %81
  br i1 %82, label %83, label %126

83:                                               ; preds = %78
  %84 = load i8*, i8** %11, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp sge i32 %86, 48
  br i1 %87, label %88, label %109

88:                                               ; preds = %83
  %89 = load i8*, i8** %11, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp sle i32 %91, 57
  br i1 %92, label %93, label %109

93:                                               ; preds = %88
  %94 = load i32, i32* %21, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [6 x i8], [6 x i8]* %20, i64 0, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = mul nsw i32 %98, 10
  %100 = load i8*, i8** %11, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = add nsw i32 %99, %102
  %104 = sub nsw i32 %103, 48
  %105 = trunc i32 %104 to i8
  %106 = load i32, i32* %21, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [6 x i8], [6 x i8]* %20, i64 0, i64 %107
  store i8 %105, i8* %108, align 1
  br label %122

109:                                              ; preds = %88, %83
  %110 = load i8*, i8** %11, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 44
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load i32, i32* %21, align 4
  %116 = icmp slt i32 %115, 5
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* %21, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %21, align 4
  br label %121

120:                                              ; preds = %114, %109
  store i32 -1, i32* %10, align 4
  br label %140

121:                                              ; preds = %117
  br label %122

122:                                              ; preds = %121, %93
  br label %123

123:                                              ; preds = %122
  %124 = load i8*, i8** %11, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %11, align 8
  br label %78

126:                                              ; preds = %78
  %127 = load i32, i32* %21, align 4
  %128 = icmp ne i32 %127, 5
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32 -1, i32* %10, align 4
  br label %140

130:                                              ; preds = %126
  %131 = getelementptr inbounds [6 x i8], [6 x i8]* %20, i64 0, i64 0
  %132 = bitcast i8* %131 to i32*
  %133 = call i32 @get_unaligned(i32* %132)
  %134 = load i32*, i32** %16, align 8
  store i32 %133, i32* %134, align 4
  %135 = getelementptr inbounds [6 x i8], [6 x i8]* %20, i64 0, i64 0
  %136 = getelementptr inbounds i8, i8* %135, i64 4
  %137 = bitcast i8* %136 to i32*
  %138 = call i32 @get_unaligned(i32* %137)
  %139 = load i32*, i32** %17, align 8
  store i32 %138, i32* %139, align 4
  store i32 1, i32* %10, align 4
  br label %140

140:                                              ; preds = %130, %129, %120, %66, %47, %40, %39
  %141 = load i32, i32* %10, align 4
  ret i32 %141
}

declare dso_local i64 @strnicmp(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @get_unaligned(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
