; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_mgmt.c_netlbl_mgmt_add_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_mgmt.c_netlbl_mgmt_add_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { i64* }
%struct.netlbl_audit = type { i32 }
%struct.netlbl_dom_map = type { i32, %struct.netlbl_dom_map*, %struct.TYPE_4__, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_4__ = type { %struct.netlbl_domaddr_map*, %struct.cipso_v4_doi* }
%struct.netlbl_domaddr_map = type { i32, %struct.netlbl_domaddr_map*, %struct.TYPE_4__, i32, %struct.TYPE_5__, i32 }
%struct.cipso_v4_doi = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.in_addr = type { i32 }
%struct.netlbl_domaddr4_map = type { i32, %struct.netlbl_domaddr4_map*, %struct.TYPE_4__, i32, %struct.TYPE_5__, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NLBL_MGMT_A_PROTOCOL = common dso_local global i64 0, align 8
@NLBL_MGMT_A_DOMAIN = common dso_local global i64 0, align 8
@NLBL_MGMT_A_CV4DOI = common dso_local global i64 0, align 8
@NLBL_MGMT_A_IPV4ADDR = common dso_local global i64 0, align 8
@NLBL_MGMT_A_IPV4MASK = common dso_local global i64 0, align 8
@NETLBL_NLTYPE_ADDRSELECT = common dso_local global i8* null, align 8
@NLBL_MGMT_A_IPV6ADDR = common dso_local global i64 0, align 8
@NLBL_MGMT_A_IPV6MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*, %struct.netlbl_audit*)* @netlbl_mgmt_add_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlbl_mgmt_add_common(%struct.genl_info* %0, %struct.netlbl_audit* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.netlbl_audit*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netlbl_dom_map*, align 8
  %8 = alloca %struct.netlbl_domaddr_map*, align 8
  %9 = alloca %struct.cipso_v4_doi*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.in_addr*, align 8
  %13 = alloca %struct.in_addr*, align 8
  %14 = alloca %struct.netlbl_domaddr4_map*, align 8
  store %struct.genl_info* %0, %struct.genl_info** %4, align 8
  store %struct.netlbl_audit* %1, %struct.netlbl_audit** %5, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  store %struct.netlbl_dom_map* null, %struct.netlbl_dom_map** %7, align 8
  store %struct.netlbl_domaddr_map* null, %struct.netlbl_domaddr_map** %8, align 8
  store %struct.cipso_v4_doi* null, %struct.cipso_v4_doi** %9, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.netlbl_domaddr_map* @kzalloc(i32 56, i32 %17)
  %19 = bitcast %struct.netlbl_domaddr_map* %18 to %struct.netlbl_dom_map*
  store %struct.netlbl_dom_map* %19, %struct.netlbl_dom_map** %7, align 8
  %20 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %7, align 8
  %21 = icmp eq %struct.netlbl_dom_map* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %246

25:                                               ; preds = %2
  %26 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %27 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* @NLBL_MGMT_A_PROTOCOL, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = call i8* @nla_get_u32(i64 %31)
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %7, align 8
  %35 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %37 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* @NLBL_MGMT_A_DOMAIN, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %78

43:                                               ; preds = %25
  %44 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %45 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* @NLBL_MGMT_A_DOMAIN, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @nla_len(i64 %49)
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.netlbl_domaddr_map* @kmalloc(i64 %52, i32 %53)
  %55 = bitcast %struct.netlbl_domaddr_map* %54 to %struct.netlbl_dom_map*
  %56 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %7, align 8
  %57 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %56, i32 0, i32 1
  store %struct.netlbl_dom_map* %55, %struct.netlbl_dom_map** %57, align 8
  %58 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %7, align 8
  %59 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %58, i32 0, i32 1
  %60 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %59, align 8
  %61 = icmp eq %struct.netlbl_dom_map* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %43
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %246

65:                                               ; preds = %43
  %66 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %7, align 8
  %67 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %66, i32 0, i32 1
  %68 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %67, align 8
  %69 = bitcast %struct.netlbl_dom_map* %68 to %struct.netlbl_domaddr_map*
  %70 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %71 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* @NLBL_MGMT_A_DOMAIN, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %11, align 8
  %77 = call i32 @nla_strlcpy(%struct.netlbl_domaddr_map* %69, i64 %75, i64 %76)
  br label %78

78:                                               ; preds = %65, %25
  %79 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %7, align 8
  %80 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  switch i32 %81, label %110 [
    i32 128, label %82
    i32 129, label %83
  ]

82:                                               ; preds = %78
  br label %111

83:                                               ; preds = %78
  %84 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %85 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* @NLBL_MGMT_A_CV4DOI, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %83
  br label %246

92:                                               ; preds = %83
  %93 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %94 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = load i64, i64* @NLBL_MGMT_A_CV4DOI, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = call i8* @nla_get_u32(i64 %98)
  store i8* %99, i8** %10, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = call %struct.cipso_v4_doi* @cipso_v4_doi_getdef(i8* %100)
  store %struct.cipso_v4_doi* %101, %struct.cipso_v4_doi** %9, align 8
  %102 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %9, align 8
  %103 = icmp eq %struct.cipso_v4_doi* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %92
  br label %246

105:                                              ; preds = %92
  %106 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %9, align 8
  %107 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %7, align 8
  %108 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  store %struct.cipso_v4_doi* %106, %struct.cipso_v4_doi** %109, align 8
  br label %111

110:                                              ; preds = %78
  br label %246

111:                                              ; preds = %105, %82
  %112 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %113 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %112, i32 0, i32 0
  %114 = load i64*, i64** %113, align 8
  %115 = load i64, i64* @NLBL_MGMT_A_IPV4ADDR, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %237

119:                                              ; preds = %111
  %120 = load i32, i32* @GFP_KERNEL, align 4
  %121 = call %struct.netlbl_domaddr_map* @kzalloc(i32 56, i32 %120)
  store %struct.netlbl_domaddr_map* %121, %struct.netlbl_domaddr_map** %8, align 8
  %122 = load %struct.netlbl_domaddr_map*, %struct.netlbl_domaddr_map** %8, align 8
  %123 = icmp eq %struct.netlbl_domaddr_map* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %6, align 4
  br label %246

127:                                              ; preds = %119
  %128 = load %struct.netlbl_domaddr_map*, %struct.netlbl_domaddr_map** %8, align 8
  %129 = getelementptr inbounds %struct.netlbl_domaddr_map, %struct.netlbl_domaddr_map* %128, i32 0, i32 5
  %130 = call i32 @INIT_LIST_HEAD(i32* %129)
  %131 = load %struct.netlbl_domaddr_map*, %struct.netlbl_domaddr_map** %8, align 8
  %132 = getelementptr inbounds %struct.netlbl_domaddr_map, %struct.netlbl_domaddr_map* %131, i32 0, i32 3
  %133 = call i32 @INIT_LIST_HEAD(i32* %132)
  %134 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %135 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %134, i32 0, i32 0
  %136 = load i64*, i64** %135, align 8
  %137 = load i64, i64* @NLBL_MGMT_A_IPV4ADDR, align 8
  %138 = getelementptr inbounds i64, i64* %136, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @nla_len(i64 %139)
  %141 = sext i32 %140 to i64
  %142 = icmp ne i64 %141, 4
  br i1 %142, label %143, label %146

143:                                              ; preds = %127
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %6, align 4
  br label %246

146:                                              ; preds = %127
  %147 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %148 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %147, i32 0, i32 0
  %149 = load i64*, i64** %148, align 8
  %150 = load i64, i64* @NLBL_MGMT_A_IPV4MASK, align 8
  %151 = getelementptr inbounds i64, i64* %149, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @nla_len(i64 %152)
  %154 = sext i32 %153 to i64
  %155 = icmp ne i64 %154, 4
  br i1 %155, label %156, label %159

156:                                              ; preds = %146
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %6, align 4
  br label %246

159:                                              ; preds = %146
  %160 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %161 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %160, i32 0, i32 0
  %162 = load i64*, i64** %161, align 8
  %163 = load i64, i64* @NLBL_MGMT_A_IPV4ADDR, align 8
  %164 = getelementptr inbounds i64, i64* %162, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = call i8* @nla_data(i64 %165)
  %167 = bitcast i8* %166 to %struct.in_addr*
  store %struct.in_addr* %167, %struct.in_addr** %12, align 8
  %168 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %169 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %168, i32 0, i32 0
  %170 = load i64*, i64** %169, align 8
  %171 = load i64, i64* @NLBL_MGMT_A_IPV4MASK, align 8
  %172 = getelementptr inbounds i64, i64* %170, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = call i8* @nla_data(i64 %173)
  %175 = bitcast i8* %174 to %struct.in_addr*
  store %struct.in_addr* %175, %struct.in_addr** %13, align 8
  %176 = load i32, i32* @GFP_KERNEL, align 4
  %177 = call %struct.netlbl_domaddr_map* @kzalloc(i32 56, i32 %176)
  %178 = bitcast %struct.netlbl_domaddr_map* %177 to %struct.netlbl_domaddr4_map*
  store %struct.netlbl_domaddr4_map* %178, %struct.netlbl_domaddr4_map** %14, align 8
  %179 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %14, align 8
  %180 = icmp eq %struct.netlbl_domaddr4_map* %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %159
  %182 = load i32, i32* @ENOMEM, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %6, align 4
  br label %246

184:                                              ; preds = %159
  %185 = load %struct.in_addr*, %struct.in_addr** %12, align 8
  %186 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.in_addr*, %struct.in_addr** %13, align 8
  %189 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = and i32 %187, %190
  %192 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %14, align 8
  %193 = getelementptr inbounds %struct.netlbl_domaddr4_map, %struct.netlbl_domaddr4_map* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 0
  store i32 %191, i32* %194, align 4
  %195 = load %struct.in_addr*, %struct.in_addr** %13, align 8
  %196 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %14, align 8
  %199 = getelementptr inbounds %struct.netlbl_domaddr4_map, %struct.netlbl_domaddr4_map* %198, i32 0, i32 4
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 1
  store i32 %197, i32* %200, align 4
  %201 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %14, align 8
  %202 = getelementptr inbounds %struct.netlbl_domaddr4_map, %struct.netlbl_domaddr4_map* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 2
  store i32 1, i32* %203, align 4
  %204 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %7, align 8
  %205 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %14, align 8
  %208 = getelementptr inbounds %struct.netlbl_domaddr4_map, %struct.netlbl_domaddr4_map* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 8
  %209 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %9, align 8
  %210 = icmp ne %struct.cipso_v4_doi* %209, null
  br i1 %210, label %211, label %216

211:                                              ; preds = %184
  %212 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %9, align 8
  %213 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %14, align 8
  %214 = getelementptr inbounds %struct.netlbl_domaddr4_map, %struct.netlbl_domaddr4_map* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 1
  store %struct.cipso_v4_doi* %212, %struct.cipso_v4_doi** %215, align 8
  br label %216

216:                                              ; preds = %211, %184
  %217 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %14, align 8
  %218 = getelementptr inbounds %struct.netlbl_domaddr4_map, %struct.netlbl_domaddr4_map* %217, i32 0, i32 4
  %219 = load %struct.netlbl_domaddr_map*, %struct.netlbl_domaddr_map** %8, align 8
  %220 = getelementptr inbounds %struct.netlbl_domaddr_map, %struct.netlbl_domaddr_map* %219, i32 0, i32 5
  %221 = call i32 @netlbl_af4list_add(%struct.TYPE_5__* %218, i32* %220)
  store i32 %221, i32* %6, align 4
  %222 = load i32, i32* %6, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %216
  %225 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %14, align 8
  %226 = bitcast %struct.netlbl_domaddr4_map* %225 to %struct.netlbl_domaddr_map*
  %227 = call i32 @kfree(%struct.netlbl_domaddr_map* %226)
  br label %246

228:                                              ; preds = %216
  %229 = load i8*, i8** @NETLBL_NLTYPE_ADDRSELECT, align 8
  %230 = ptrtoint i8* %229 to i32
  %231 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %7, align 8
  %232 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %231, i32 0, i32 0
  store i32 %230, i32* %232, align 8
  %233 = load %struct.netlbl_domaddr_map*, %struct.netlbl_domaddr_map** %8, align 8
  %234 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %7, align 8
  %235 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  store %struct.netlbl_domaddr_map* %233, %struct.netlbl_domaddr_map** %236, align 8
  br label %237

237:                                              ; preds = %228, %111
  %238 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %7, align 8
  %239 = bitcast %struct.netlbl_dom_map* %238 to %struct.netlbl_domaddr_map*
  %240 = load %struct.netlbl_audit*, %struct.netlbl_audit** %5, align 8
  %241 = call i32 @netlbl_domhsh_add(%struct.netlbl_domaddr_map* %239, %struct.netlbl_audit* %240)
  store i32 %241, i32* %6, align 4
  %242 = load i32, i32* %6, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %237
  br label %246

245:                                              ; preds = %237
  store i32 0, i32* %3, align 4
  br label %268

246:                                              ; preds = %244, %224, %181, %156, %143, %124, %110, %104, %91, %62, %22
  %247 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %9, align 8
  %248 = icmp ne %struct.cipso_v4_doi* %247, null
  br i1 %248, label %249, label %252

249:                                              ; preds = %246
  %250 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %9, align 8
  %251 = call i32 @cipso_v4_doi_putdef(%struct.cipso_v4_doi* %250)
  br label %252

252:                                              ; preds = %249, %246
  %253 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %7, align 8
  %254 = icmp ne %struct.netlbl_dom_map* %253, null
  br i1 %254, label %255, label %261

255:                                              ; preds = %252
  %256 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %7, align 8
  %257 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %256, i32 0, i32 1
  %258 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %257, align 8
  %259 = bitcast %struct.netlbl_dom_map* %258 to %struct.netlbl_domaddr_map*
  %260 = call i32 @kfree(%struct.netlbl_domaddr_map* %259)
  br label %261

261:                                              ; preds = %255, %252
  %262 = load %struct.netlbl_domaddr_map*, %struct.netlbl_domaddr_map** %8, align 8
  %263 = call i32 @kfree(%struct.netlbl_domaddr_map* %262)
  %264 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %7, align 8
  %265 = bitcast %struct.netlbl_dom_map* %264 to %struct.netlbl_domaddr_map*
  %266 = call i32 @kfree(%struct.netlbl_domaddr_map* %265)
  %267 = load i32, i32* %6, align 4
  store i32 %267, i32* %3, align 4
  br label %268

268:                                              ; preds = %261, %245
  %269 = load i32, i32* %3, align 4
  ret i32 %269
}

declare dso_local %struct.netlbl_domaddr_map* @kzalloc(i32, i32) #1

declare dso_local i8* @nla_get_u32(i64) #1

declare dso_local i32 @nla_len(i64) #1

declare dso_local %struct.netlbl_domaddr_map* @kmalloc(i64, i32) #1

declare dso_local i32 @nla_strlcpy(%struct.netlbl_domaddr_map*, i64, i64) #1

declare dso_local %struct.cipso_v4_doi* @cipso_v4_doi_getdef(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i8* @nla_data(i64) #1

declare dso_local i32 @netlbl_af4list_add(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @kfree(%struct.netlbl_domaddr_map*) #1

declare dso_local i32 @netlbl_domhsh_add(%struct.netlbl_domaddr_map*, %struct.netlbl_audit*) #1

declare dso_local i32 @cipso_v4_doi_putdef(%struct.cipso_v4_doi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
