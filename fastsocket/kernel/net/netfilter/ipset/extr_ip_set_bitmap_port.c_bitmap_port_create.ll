; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_port.c_bitmap_port_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_port.c_bitmap_port_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { i32* }
%struct.nlattr = type { i32 }
%struct.bitmap_port = type { i64, i32 }

@IPSET_ATTR_PORT = common dso_local global i64 0, align 8
@IPSET_ATTR_PORT_TO = common dso_local global i64 0, align 8
@IPSET_ATTR_TIMEOUT = common dso_local global i64 0, align 8
@IPSET_ERR_PROTOCOL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bitmap_tport = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"memsize: %zu\0A\00", align 1
@bitmap_port = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_set*, %struct.nlattr**, i32)* @bitmap_port_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_port_create(%struct.ip_set* %0, %struct.nlattr** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_set*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bitmap_port*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ip_set* %0, %struct.ip_set** %5, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %13 = load i64, i64* @IPSET_ATTR_PORT, align 8
  %14 = call i32 @ip_set_attr_netorder(%struct.nlattr** %12, i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %18 = load i64, i64* @IPSET_ATTR_PORT_TO, align 8
  %19 = call i32 @ip_set_attr_netorder(%struct.nlattr** %17, i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %23 = load i64, i64* @IPSET_ATTR_TIMEOUT, align 8
  %24 = call i32 @ip_set_optattr_netorder(%struct.nlattr** %22, i64 %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %21, %16, %3
  %28 = phi i1 [ true, %16 ], [ true, %3 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @IPSET_ERR_PROTOCOL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %124

35:                                               ; preds = %27
  %36 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %37 = load i64, i64* @IPSET_ATTR_PORT, align 8
  %38 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %36, i64 %37
  %39 = load %struct.nlattr*, %struct.nlattr** %38, align 8
  %40 = call i64 @ip_set_get_h16(%struct.nlattr* %39)
  store i64 %40, i64* %9, align 8
  %41 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %42 = load i64, i64* @IPSET_ATTR_PORT_TO, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = call i64 @ip_set_get_h16(%struct.nlattr* %44)
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %35
  %50 = load i64, i64* %9, align 8
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %10, align 8
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %11, align 8
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %49, %35
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.bitmap_port* @kzalloc(i32 16, i32 %54)
  store %struct.bitmap_port* %55, %struct.bitmap_port** %8, align 8
  %56 = load %struct.bitmap_port*, %struct.bitmap_port** %8, align 8
  %57 = icmp ne %struct.bitmap_port* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %124

61:                                               ; preds = %53
  %62 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %63 = load i64, i64* @IPSET_ATTR_TIMEOUT, align 8
  %64 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %62, i64 %63
  %65 = load %struct.nlattr*, %struct.nlattr** %64, align 8
  %66 = icmp ne %struct.nlattr* %65, null
  br i1 %66, label %67, label %98

67:                                               ; preds = %61
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* %9, align 8
  %70 = sub nsw i64 %68, %69
  %71 = add nsw i64 %70, 1
  %72 = mul i64 %71, 8
  %73 = load %struct.bitmap_port*, %struct.bitmap_port** %8, align 8
  %74 = getelementptr inbounds %struct.bitmap_port, %struct.bitmap_port* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %76 = load %struct.bitmap_port*, %struct.bitmap_port** %8, align 8
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @init_map_port(%struct.ip_set* %75, %struct.bitmap_port* %76, i64 %77, i64 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %67
  %82 = load %struct.bitmap_port*, %struct.bitmap_port** %8, align 8
  %83 = call i32 @kfree(%struct.bitmap_port* %82)
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %124

86:                                               ; preds = %67
  %87 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %88 = load i64, i64* @IPSET_ATTR_TIMEOUT, align 8
  %89 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %87, i64 %88
  %90 = load %struct.nlattr*, %struct.nlattr** %89, align 8
  %91 = call i32 @ip_set_timeout_uget(%struct.nlattr* %90)
  %92 = load %struct.bitmap_port*, %struct.bitmap_port** %8, align 8
  %93 = getelementptr inbounds %struct.bitmap_port, %struct.bitmap_port* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %95 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %94, i32 0, i32 0
  store i32* @bitmap_tport, i32** %95, align 8
  %96 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %97 = call i32 @bitmap_port_gc_init(%struct.ip_set* %96)
  br label %123

98:                                               ; preds = %61
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* %9, align 8
  %101 = sub nsw i64 %99, %100
  %102 = call i64 @bitmap_bytes(i32 0, i64 %101)
  %103 = load %struct.bitmap_port*, %struct.bitmap_port** %8, align 8
  %104 = getelementptr inbounds %struct.bitmap_port, %struct.bitmap_port* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load %struct.bitmap_port*, %struct.bitmap_port** %8, align 8
  %106 = getelementptr inbounds %struct.bitmap_port, %struct.bitmap_port* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %107)
  %109 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %110 = load %struct.bitmap_port*, %struct.bitmap_port** %8, align 8
  %111 = load i64, i64* %9, align 8
  %112 = load i64, i64* %10, align 8
  %113 = call i32 @init_map_port(%struct.ip_set* %109, %struct.bitmap_port* %110, i64 %111, i64 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %98
  %116 = load %struct.bitmap_port*, %struct.bitmap_port** %8, align 8
  %117 = call i32 @kfree(%struct.bitmap_port* %116)
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %124

120:                                              ; preds = %98
  %121 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %122 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %121, i32 0, i32 0
  store i32* @bitmap_port, i32** %122, align 8
  br label %123

123:                                              ; preds = %120, %86
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %123, %115, %81, %58, %32
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ip_set_attr_netorder(%struct.nlattr**, i64) #1

declare dso_local i32 @ip_set_optattr_netorder(%struct.nlattr**, i64) #1

declare dso_local i64 @ip_set_get_h16(%struct.nlattr*) #1

declare dso_local %struct.bitmap_port* @kzalloc(i32, i32) #1

declare dso_local i32 @init_map_port(%struct.ip_set*, %struct.bitmap_port*, i64, i64) #1

declare dso_local i32 @kfree(%struct.bitmap_port*) #1

declare dso_local i32 @ip_set_timeout_uget(%struct.nlattr*) #1

declare dso_local i32 @bitmap_port_gc_init(%struct.ip_set*) #1

declare dso_local i64 @bitmap_bytes(i32, i64) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
