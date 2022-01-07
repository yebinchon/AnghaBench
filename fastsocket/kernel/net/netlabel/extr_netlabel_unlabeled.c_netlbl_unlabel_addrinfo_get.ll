; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_unlabeled.c_netlbl_unlabel_addrinfo_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_unlabeled.c_netlbl_unlabel_addrinfo_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { i64* }

@NLBL_UNLABEL_A_IPV4ADDR = common dso_local global i64 0, align 8
@NLBL_UNLABEL_A_IPV4MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NLBL_UNLABEL_A_IPV6ADDR = common dso_local global i64 0, align 8
@NLBL_UNLABEL_A_IPV6MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*, i8**, i8**, i32*)* @netlbl_unlabel_addrinfo_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlbl_unlabel_addrinfo_get(%struct.genl_info* %0, i8** %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.genl_info*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.genl_info* %0, %struct.genl_info** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %12 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* @NLBL_UNLABEL_A_IPV4ADDR, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %61

18:                                               ; preds = %4
  %19 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %20 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* @NLBL_UNLABEL_A_IPV4ADDR, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @nla_len(i64 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ne i64 %27, 4
  br i1 %28, label %29, label %42

29:                                               ; preds = %18
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %32 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* @NLBL_UNLABEL_A_IPV4MASK, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @nla_len(i64 %36)
  %38 = icmp ne i32 %30, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %116

42:                                               ; preds = %29, %18
  %43 = load i32, i32* %10, align 4
  %44 = load i32*, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %46 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* @NLBL_UNLABEL_A_IPV4ADDR, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = call i8* @nla_data(i64 %50)
  %52 = load i8**, i8*** %7, align 8
  store i8* %51, i8** %52, align 8
  %53 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %54 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* @NLBL_UNLABEL_A_IPV4MASK, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = call i8* @nla_data(i64 %58)
  %60 = load i8**, i8*** %8, align 8
  store i8* %59, i8** %60, align 8
  store i32 0, i32* %5, align 4
  br label %116

61:                                               ; preds = %4
  %62 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %63 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* @NLBL_UNLABEL_A_IPV6ADDR, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %112

69:                                               ; preds = %61
  %70 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %71 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* @NLBL_UNLABEL_A_IPV6ADDR, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @nla_len(i64 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = icmp ne i64 %78, 4
  br i1 %79, label %80, label %93

80:                                               ; preds = %69
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %83 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = load i64, i64* @NLBL_UNLABEL_A_IPV6MASK, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @nla_len(i64 %87)
  %89 = icmp ne i32 %81, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %80
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %5, align 4
  br label %116

93:                                               ; preds = %80, %69
  %94 = load i32, i32* %10, align 4
  %95 = load i32*, i32** %9, align 8
  store i32 %94, i32* %95, align 4
  %96 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %97 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* @NLBL_UNLABEL_A_IPV6ADDR, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = call i8* @nla_data(i64 %101)
  %103 = load i8**, i8*** %7, align 8
  store i8* %102, i8** %103, align 8
  %104 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %105 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = load i64, i64* @NLBL_UNLABEL_A_IPV6MASK, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = call i8* @nla_data(i64 %109)
  %111 = load i8**, i8*** %8, align 8
  store i8* %110, i8** %111, align 8
  store i32 0, i32* %5, align 4
  br label %116

112:                                              ; preds = %61
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %113, %93, %90, %42, %39
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @nla_len(i64) #1

declare dso_local i8* @nla_data(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
