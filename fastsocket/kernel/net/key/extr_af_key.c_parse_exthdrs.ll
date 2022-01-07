; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_parse_exthdrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_parse_exthdrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sadb_msg = type { i32 }
%struct.sadb_ext = type { i32, i64 }

@SADB_EXT_RESERVED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SADB_EXT_MAX = common dso_local global i64 0, align 8
@sadb_ext_min_len = common dso_local global i64* null, align 8
@SADB_EXT_ADDRESS_SRC = common dso_local global i64 0, align 8
@SADB_EXT_ADDRESS_DST = common dso_local global i64 0, align 8
@SADB_EXT_ADDRESS_PROXY = common dso_local global i64 0, align 8
@SADB_X_EXT_NAT_T_OA = common dso_local global i64 0, align 8
@SADB_X_EXT_SEC_CTX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sadb_msg*, i8**)* @parse_exthdrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_exthdrs(%struct.sk_buff* %0, %struct.sadb_msg* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sadb_msg*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sadb_ext*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.sadb_msg* %1, %struct.sadb_msg** %6, align 8
  store i8** %2, i8*** %7, align 8
  %14 = load %struct.sadb_msg*, %struct.sadb_msg** %6, align 8
  %15 = bitcast %struct.sadb_msg* %14 to i8*
  store i8* %15, i8** %8, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = sub i64 %20, 4
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 4
  store i8* %24, i8** %8, align 8
  br label %25

25:                                               ; preds = %123, %3
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %131

28:                                               ; preds = %25
  %29 = load i8*, i8** %8, align 8
  %30 = bitcast i8* %29 to %struct.sadb_ext*
  store %struct.sadb_ext* %30, %struct.sadb_ext** %10, align 8
  %31 = load %struct.sadb_ext*, %struct.sadb_ext** %10, align 8
  %32 = getelementptr inbounds %struct.sadb_ext, %struct.sadb_ext* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %12, align 4
  %38 = load %struct.sadb_ext*, %struct.sadb_ext** %10, align 8
  %39 = getelementptr inbounds %struct.sadb_ext, %struct.sadb_ext* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %11, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp ult i64 %42, 4
  br i1 %43, label %52, label %44

44:                                               ; preds = %28
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* @SADB_EXT_RESERVED, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48, %44, %28
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %132

55:                                               ; preds = %48
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* @SADB_EXT_MAX, align 8
  %58 = icmp ule i64 %56, %57
  br i1 %58, label %59, label %123

59:                                               ; preds = %55
  %60 = load i64*, i64** @sadb_ext_min_len, align 8
  %61 = load i64, i64* %11, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %132

71:                                               ; preds = %59
  %72 = load i8**, i8*** %7, align 8
  %73 = load i64, i64* %11, align 8
  %74 = sub i64 %73, 1
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %132

81:                                               ; preds = %71
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* @SADB_EXT_ADDRESS_SRC, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %97, label %85

85:                                               ; preds = %81
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* @SADB_EXT_ADDRESS_DST, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %97, label %89

89:                                               ; preds = %85
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* @SADB_EXT_ADDRESS_PROXY, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* @SADB_X_EXT_NAT_T_OA, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %93, %89, %85, %81
  %98 = load i8*, i8** %8, align 8
  %99 = call i64 @verify_address_len(i8* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %132

104:                                              ; preds = %97
  br label %105

105:                                              ; preds = %104, %93
  %106 = load i64, i64* %11, align 8
  %107 = load i64, i64* @SADB_X_EXT_SEC_CTX, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %105
  %110 = load i8*, i8** %8, align 8
  %111 = call i64 @verify_sec_ctx_len(i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %4, align 4
  br label %132

116:                                              ; preds = %109
  br label %117

117:                                              ; preds = %116, %105
  %118 = load i8*, i8** %8, align 8
  %119 = load i8**, i8*** %7, align 8
  %120 = load i64, i64* %11, align 8
  %121 = sub i64 %120, 1
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  store i8* %118, i8** %122, align 8
  br label %123

123:                                              ; preds = %117, %55
  %124 = load i32, i32* %12, align 4
  %125 = load i8*, i8** %8, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  store i8* %127, i8** %8, align 8
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %9, align 4
  %130 = sub nsw i32 %129, %128
  store i32 %130, i32* %9, align 4
  br label %25

131:                                              ; preds = %25
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %131, %113, %101, %78, %68, %52
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i64 @verify_address_len(i8*) #1

declare dso_local i64 @verify_sec_ctx_len(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
