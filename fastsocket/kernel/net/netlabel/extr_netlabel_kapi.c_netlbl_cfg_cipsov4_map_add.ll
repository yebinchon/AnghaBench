; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_kapi.c_netlbl_cfg_cipsov4_map_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_kapi.c_netlbl_cfg_cipsov4_map_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.netlbl_audit = type { i32 }
%struct.cipso_v4_doi = type { i32 }
%struct.netlbl_dom_map = type { %struct.netlbl_dom_map*, i8*, %struct.TYPE_3__, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { %struct.netlbl_domaddr_map*, %struct.cipso_v4_doi* }
%struct.netlbl_domaddr_map = type { %struct.netlbl_domaddr_map*, i8*, %struct.TYPE_3__, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.netlbl_domaddr4_map = type { %struct.netlbl_domaddr4_map*, i8*, %struct.TYPE_3__, i32, %struct.TYPE_4__, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NETLBL_NLTYPE_CIPSOV4 = common dso_local global i8* null, align 8
@NETLBL_NLTYPE_ADDRSELECT = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netlbl_cfg_cipsov4_map_add(i32 %0, i8* %1, %struct.in_addr* %2, %struct.in_addr* %3, %struct.netlbl_audit* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.in_addr*, align 8
  %10 = alloca %struct.in_addr*, align 8
  %11 = alloca %struct.netlbl_audit*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.cipso_v4_doi*, align 8
  %14 = alloca %struct.netlbl_dom_map*, align 8
  %15 = alloca %struct.netlbl_domaddr_map*, align 8
  %16 = alloca %struct.netlbl_domaddr4_map*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store %struct.in_addr* %2, %struct.in_addr** %9, align 8
  store %struct.in_addr* %3, %struct.in_addr** %10, align 8
  store %struct.netlbl_audit* %4, %struct.netlbl_audit** %11, align 8
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %12, align 4
  store %struct.netlbl_domaddr_map* null, %struct.netlbl_domaddr_map** %15, align 8
  store %struct.netlbl_domaddr4_map* null, %struct.netlbl_domaddr4_map** %16, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.cipso_v4_doi* @cipso_v4_doi_getdef(i32 %19)
  store %struct.cipso_v4_doi* %20, %struct.cipso_v4_doi** %13, align 8
  %21 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %13, align 8
  %22 = icmp eq %struct.cipso_v4_doi* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %163

26:                                               ; preds = %5
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call %struct.netlbl_domaddr_map* @kzalloc(i32 56, i32 %27)
  %29 = bitcast %struct.netlbl_domaddr_map* %28 to %struct.netlbl_dom_map*
  store %struct.netlbl_dom_map* %29, %struct.netlbl_dom_map** %14, align 8
  %30 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %14, align 8
  %31 = icmp eq %struct.netlbl_dom_map* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %163

35:                                               ; preds = %26
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* @GFP_ATOMIC, align 4
  %41 = call %struct.netlbl_domaddr_map* @kstrdup(i8* %39, i32 %40)
  %42 = bitcast %struct.netlbl_domaddr_map* %41 to %struct.netlbl_dom_map*
  %43 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %14, align 8
  %44 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %43, i32 0, i32 0
  store %struct.netlbl_dom_map* %42, %struct.netlbl_dom_map** %44, align 8
  %45 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %14, align 8
  %46 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %45, i32 0, i32 0
  %47 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %46, align 8
  %48 = icmp eq %struct.netlbl_dom_map* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %146

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50, %35
  %52 = load %struct.in_addr*, %struct.in_addr** %9, align 8
  %53 = icmp eq %struct.in_addr* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = load %struct.in_addr*, %struct.in_addr** %10, align 8
  %56 = icmp eq %struct.in_addr* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %13, align 8
  %59 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %14, align 8
  %60 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store %struct.cipso_v4_doi* %58, %struct.cipso_v4_doi** %61, align 8
  %62 = load i8*, i8** @NETLBL_NLTYPE_CIPSOV4, align 8
  %63 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %14, align 8
  %64 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  br label %137

65:                                               ; preds = %54, %51
  %66 = load %struct.in_addr*, %struct.in_addr** %9, align 8
  %67 = icmp ne %struct.in_addr* %66, null
  br i1 %67, label %68, label %133

68:                                               ; preds = %65
  %69 = load %struct.in_addr*, %struct.in_addr** %10, align 8
  %70 = icmp ne %struct.in_addr* %69, null
  br i1 %70, label %71, label %133

71:                                               ; preds = %68
  %72 = load i32, i32* @GFP_ATOMIC, align 4
  %73 = call %struct.netlbl_domaddr_map* @kzalloc(i32 56, i32 %72)
  store %struct.netlbl_domaddr_map* %73, %struct.netlbl_domaddr_map** %15, align 8
  %74 = load %struct.netlbl_domaddr_map*, %struct.netlbl_domaddr_map** %15, align 8
  %75 = icmp eq %struct.netlbl_domaddr_map* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %146

77:                                               ; preds = %71
  %78 = load %struct.netlbl_domaddr_map*, %struct.netlbl_domaddr_map** %15, align 8
  %79 = getelementptr inbounds %struct.netlbl_domaddr_map, %struct.netlbl_domaddr_map* %78, i32 0, i32 3
  %80 = call i32 @INIT_LIST_HEAD(i32* %79)
  %81 = load %struct.netlbl_domaddr_map*, %struct.netlbl_domaddr_map** %15, align 8
  %82 = getelementptr inbounds %struct.netlbl_domaddr_map, %struct.netlbl_domaddr_map* %81, i32 0, i32 5
  %83 = call i32 @INIT_LIST_HEAD(i32* %82)
  %84 = load i32, i32* @GFP_ATOMIC, align 4
  %85 = call %struct.netlbl_domaddr_map* @kzalloc(i32 56, i32 %84)
  %86 = bitcast %struct.netlbl_domaddr_map* %85 to %struct.netlbl_domaddr4_map*
  store %struct.netlbl_domaddr4_map* %86, %struct.netlbl_domaddr4_map** %16, align 8
  %87 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %16, align 8
  %88 = icmp eq %struct.netlbl_domaddr4_map* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %77
  br label %146

90:                                               ; preds = %77
  %91 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %13, align 8
  %92 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %16, align 8
  %93 = getelementptr inbounds %struct.netlbl_domaddr4_map, %struct.netlbl_domaddr4_map* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  store %struct.cipso_v4_doi* %91, %struct.cipso_v4_doi** %94, align 8
  %95 = load i8*, i8** @NETLBL_NLTYPE_CIPSOV4, align 8
  %96 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %16, align 8
  %97 = getelementptr inbounds %struct.netlbl_domaddr4_map, %struct.netlbl_domaddr4_map* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = load %struct.in_addr*, %struct.in_addr** %9, align 8
  %99 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.in_addr*, %struct.in_addr** %10, align 8
  %102 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %100, %103
  %105 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %16, align 8
  %106 = getelementptr inbounds %struct.netlbl_domaddr4_map, %struct.netlbl_domaddr4_map* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 4
  %108 = load %struct.in_addr*, %struct.in_addr** %10, align 8
  %109 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %16, align 8
  %112 = getelementptr inbounds %struct.netlbl_domaddr4_map, %struct.netlbl_domaddr4_map* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 4
  %114 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %16, align 8
  %115 = getelementptr inbounds %struct.netlbl_domaddr4_map, %struct.netlbl_domaddr4_map* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  store i32 1, i32* %116, align 4
  %117 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %16, align 8
  %118 = getelementptr inbounds %struct.netlbl_domaddr4_map, %struct.netlbl_domaddr4_map* %117, i32 0, i32 4
  %119 = load %struct.netlbl_domaddr_map*, %struct.netlbl_domaddr_map** %15, align 8
  %120 = getelementptr inbounds %struct.netlbl_domaddr_map, %struct.netlbl_domaddr_map* %119, i32 0, i32 3
  %121 = call i32 @netlbl_af4list_add(%struct.TYPE_4__* %118, i32* %120)
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %90
  br label %146

125:                                              ; preds = %90
  %126 = load %struct.netlbl_domaddr_map*, %struct.netlbl_domaddr_map** %15, align 8
  %127 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %14, align 8
  %128 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  store %struct.netlbl_domaddr_map* %126, %struct.netlbl_domaddr_map** %129, align 8
  %130 = load i8*, i8** @NETLBL_NLTYPE_ADDRSELECT, align 8
  %131 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %14, align 8
  %132 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %131, i32 0, i32 1
  store i8* %130, i8** %132, align 8
  br label %136

133:                                              ; preds = %68, %65
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %12, align 4
  br label %146

136:                                              ; preds = %125
  br label %137

137:                                              ; preds = %136, %57
  %138 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %14, align 8
  %139 = bitcast %struct.netlbl_dom_map* %138 to %struct.netlbl_domaddr_map*
  %140 = load %struct.netlbl_audit*, %struct.netlbl_audit** %11, align 8
  %141 = call i32 @netlbl_domhsh_add(%struct.netlbl_domaddr_map* %139, %struct.netlbl_audit* %140)
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  br label %146

145:                                              ; preds = %137
  store i32 0, i32* %6, align 4
  br label %163

146:                                              ; preds = %144, %133, %124, %89, %76, %49
  %147 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %13, align 8
  %148 = call i32 @cipso_v4_doi_putdef(%struct.cipso_v4_doi* %147)
  %149 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %14, align 8
  %150 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %149, i32 0, i32 0
  %151 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %150, align 8
  %152 = bitcast %struct.netlbl_dom_map* %151 to %struct.netlbl_domaddr_map*
  %153 = call i32 @kfree(%struct.netlbl_domaddr_map* %152)
  %154 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %14, align 8
  %155 = bitcast %struct.netlbl_dom_map* %154 to %struct.netlbl_domaddr_map*
  %156 = call i32 @kfree(%struct.netlbl_domaddr_map* %155)
  %157 = load %struct.netlbl_domaddr_map*, %struct.netlbl_domaddr_map** %15, align 8
  %158 = call i32 @kfree(%struct.netlbl_domaddr_map* %157)
  %159 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %16, align 8
  %160 = bitcast %struct.netlbl_domaddr4_map* %159 to %struct.netlbl_domaddr_map*
  %161 = call i32 @kfree(%struct.netlbl_domaddr_map* %160)
  %162 = load i32, i32* %12, align 4
  store i32 %162, i32* %6, align 4
  br label %163

163:                                              ; preds = %146, %145, %32, %23
  %164 = load i32, i32* %6, align 4
  ret i32 %164
}

declare dso_local %struct.cipso_v4_doi* @cipso_v4_doi_getdef(i32) #1

declare dso_local %struct.netlbl_domaddr_map* @kzalloc(i32, i32) #1

declare dso_local %struct.netlbl_domaddr_map* @kstrdup(i8*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @netlbl_af4list_add(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @netlbl_domhsh_add(%struct.netlbl_domaddr_map*, %struct.netlbl_audit*) #1

declare dso_local i32 @cipso_v4_doi_putdef(%struct.cipso_v4_doi*) #1

declare dso_local i32 @kfree(%struct.netlbl_domaddr_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
