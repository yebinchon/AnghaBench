; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_hash_ipport.c_hash_ipport_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_hash_ipport.c_hash_ipport_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { i64, %struct.ip_set_hash*, i32, i32* }
%struct.ip_set_hash = type { %struct.TYPE_3__*, i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nlattr = type { i32 }

@IPSET_DEFAULT_HASHSIZE = common dso_local global i64 0, align 8
@IPSET_DEFAULT_MAXELEM = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@IPSET_ERR_INVALID_FAMILY = common dso_local global i32 0, align 4
@IPSET_ATTR_HASHSIZE = common dso_local global i64 0, align 8
@IPSET_ATTR_MAXELEM = common dso_local global i64 0, align 8
@IPSET_ATTR_TIMEOUT = common dso_local global i64 0, align 8
@IPSET_ERR_PROTOCOL = common dso_local global i32 0, align 4
@IPSET_MIMINAL_HASHSIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPSET_NO_TIMEOUT = common dso_local global i32 0, align 4
@hash_ipport4_tvariant = common dso_local global i32 0, align 4
@hash_ipport6_tvariant = common dso_local global i32 0, align 4
@hash_ipport4_variant = common dso_local global i32 0, align 4
@hash_ipport6_variant = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"create %s hashsize %u (%u) maxelem %u: %p(%p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_set*, %struct.nlattr**, i64)* @hash_ipport_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_ipport_create(%struct.ip_set* %0, %struct.nlattr** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_set*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ip_set_hash*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.ip_set* %0, %struct.ip_set** %5, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* @IPSET_DEFAULT_HASHSIZE, align 8
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* @IPSET_DEFAULT_MAXELEM, align 8
  store i64 %14, i64* %10, align 8
  %15 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %16 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AF_INET, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %29, label %20

20:                                               ; preds = %3
  %21 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %22 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AF_INET6, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @IPSET_ERR_INVALID_FAMILY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %204

29:                                               ; preds = %20, %3
  %30 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %31 = load i64, i64* @IPSET_ATTR_HASHSIZE, align 8
  %32 = call i32 @ip_set_optattr_netorder(%struct.nlattr** %30, i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %36 = load i64, i64* @IPSET_ATTR_MAXELEM, align 8
  %37 = call i32 @ip_set_optattr_netorder(%struct.nlattr** %35, i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %41 = load i64, i64* @IPSET_ATTR_TIMEOUT, align 8
  %42 = call i32 @ip_set_optattr_netorder(%struct.nlattr** %40, i64 %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %39, %34, %29
  %46 = phi i1 [ true, %34 ], [ true, %29 ], [ %44, %39 ]
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @IPSET_ERR_PROTOCOL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %204

53:                                               ; preds = %45
  %54 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %55 = load i64, i64* @IPSET_ATTR_HASHSIZE, align 8
  %56 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %54, i64 %55
  %57 = load %struct.nlattr*, %struct.nlattr** %56, align 8
  %58 = icmp ne %struct.nlattr* %57, null
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %61 = load i64, i64* @IPSET_ATTR_HASHSIZE, align 8
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %60, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = call i64 @ip_set_get_h32(%struct.nlattr* %63)
  store i64 %64, i64* %9, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* @IPSET_MIMINAL_HASHSIZE, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i64, i64* @IPSET_MIMINAL_HASHSIZE, align 8
  store i64 %69, i64* %9, align 8
  br label %70

70:                                               ; preds = %68, %59
  br label %71

71:                                               ; preds = %70, %53
  %72 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %73 = load i64, i64* @IPSET_ATTR_MAXELEM, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %72, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = icmp ne %struct.nlattr* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %79 = load i64, i64* @IPSET_ATTR_MAXELEM, align 8
  %80 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %78, i64 %79
  %81 = load %struct.nlattr*, %struct.nlattr** %80, align 8
  %82 = call i64 @ip_set_get_h32(%struct.nlattr* %81)
  store i64 %82, i64* %10, align 8
  br label %83

83:                                               ; preds = %77, %71
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call %struct.ip_set_hash* @kzalloc(i32 24, i32 %84)
  store %struct.ip_set_hash* %85, %struct.ip_set_hash** %8, align 8
  %86 = load %struct.ip_set_hash*, %struct.ip_set_hash** %8, align 8
  %87 = icmp ne %struct.ip_set_hash* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %204

91:                                               ; preds = %83
  %92 = load i64, i64* %10, align 8
  %93 = load %struct.ip_set_hash*, %struct.ip_set_hash** %8, align 8
  %94 = getelementptr inbounds %struct.ip_set_hash, %struct.ip_set_hash* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  %95 = load %struct.ip_set_hash*, %struct.ip_set_hash** %8, align 8
  %96 = getelementptr inbounds %struct.ip_set_hash, %struct.ip_set_hash* %95, i32 0, i32 3
  %97 = call i32 @get_random_bytes(i32* %96, i32 4)
  %98 = load i32, i32* @IPSET_NO_TIMEOUT, align 4
  %99 = load %struct.ip_set_hash*, %struct.ip_set_hash** %8, align 8
  %100 = getelementptr inbounds %struct.ip_set_hash, %struct.ip_set_hash* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load i64, i64* %9, align 8
  %102 = call i32 @htable_bits(i64 %101)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i64 @htable_size(i32 %103)
  store i64 %104, i64* %12, align 8
  %105 = load i64, i64* %12, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %91
  %108 = load %struct.ip_set_hash*, %struct.ip_set_hash** %8, align 8
  %109 = call i32 @kfree(%struct.ip_set_hash* %108)
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %204

112:                                              ; preds = %91
  %113 = load i64, i64* %12, align 8
  %114 = call %struct.TYPE_3__* @ip_set_alloc(i64 %113)
  %115 = load %struct.ip_set_hash*, %struct.ip_set_hash** %8, align 8
  %116 = getelementptr inbounds %struct.ip_set_hash, %struct.ip_set_hash* %115, i32 0, i32 0
  store %struct.TYPE_3__* %114, %struct.TYPE_3__** %116, align 8
  %117 = load %struct.ip_set_hash*, %struct.ip_set_hash** %8, align 8
  %118 = getelementptr inbounds %struct.ip_set_hash, %struct.ip_set_hash* %117, i32 0, i32 0
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = icmp ne %struct.TYPE_3__* %119, null
  br i1 %120, label %126, label %121

121:                                              ; preds = %112
  %122 = load %struct.ip_set_hash*, %struct.ip_set_hash** %8, align 8
  %123 = call i32 @kfree(%struct.ip_set_hash* %122)
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %4, align 4
  br label %204

126:                                              ; preds = %112
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.ip_set_hash*, %struct.ip_set_hash** %8, align 8
  %129 = getelementptr inbounds %struct.ip_set_hash, %struct.ip_set_hash* %128, i32 0, i32 0
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  store i32 %127, i32* %131, align 4
  %132 = load %struct.ip_set_hash*, %struct.ip_set_hash** %8, align 8
  %133 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %134 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %133, i32 0, i32 1
  store %struct.ip_set_hash* %132, %struct.ip_set_hash** %134, align 8
  %135 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %136 = load i64, i64* @IPSET_ATTR_TIMEOUT, align 8
  %137 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %135, i64 %136
  %138 = load %struct.nlattr*, %struct.nlattr** %137, align 8
  %139 = icmp ne %struct.nlattr* %138, null
  br i1 %139, label %140, label %169

140:                                              ; preds = %126
  %141 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %142 = load i64, i64* @IPSET_ATTR_TIMEOUT, align 8
  %143 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %141, i64 %142
  %144 = load %struct.nlattr*, %struct.nlattr** %143, align 8
  %145 = call i32 @ip_set_timeout_uget(%struct.nlattr* %144)
  %146 = load %struct.ip_set_hash*, %struct.ip_set_hash** %8, align 8
  %147 = getelementptr inbounds %struct.ip_set_hash, %struct.ip_set_hash* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 8
  %148 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %149 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @AF_INET, align 8
  %152 = icmp eq i64 %150, %151
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i32* @hash_ipport4_tvariant, i32* @hash_ipport6_tvariant
  %155 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %156 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %155, i32 0, i32 3
  store i32* %154, i32** %156, align 8
  %157 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %158 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @AF_INET, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %140
  %163 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %164 = call i32 @hash_ipport4_gc_init(%struct.ip_set* %163)
  br label %168

165:                                              ; preds = %140
  %166 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %167 = call i32 @hash_ipport6_gc_init(%struct.ip_set* %166)
  br label %168

168:                                              ; preds = %165, %162
  br label %179

169:                                              ; preds = %126
  %170 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %171 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @AF_INET, align 8
  %174 = icmp eq i64 %172, %173
  %175 = zext i1 %174 to i64
  %176 = select i1 %174, i32* @hash_ipport4_variant, i32* @hash_ipport6_variant
  %177 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %178 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %177, i32 0, i32 3
  store i32* %176, i32** %178, align 8
  br label %179

179:                                              ; preds = %169, %168
  %180 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %181 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.ip_set_hash*, %struct.ip_set_hash** %8, align 8
  %184 = getelementptr inbounds %struct.ip_set_hash, %struct.ip_set_hash* %183, i32 0, i32 0
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @jhash_size(i32 %187)
  %189 = load %struct.ip_set_hash*, %struct.ip_set_hash** %8, align 8
  %190 = getelementptr inbounds %struct.ip_set_hash, %struct.ip_set_hash* %189, i32 0, i32 0
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.ip_set_hash*, %struct.ip_set_hash** %8, align 8
  %195 = getelementptr inbounds %struct.ip_set_hash, %struct.ip_set_hash* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %198 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %197, i32 0, i32 1
  %199 = load %struct.ip_set_hash*, %struct.ip_set_hash** %198, align 8
  %200 = load %struct.ip_set_hash*, %struct.ip_set_hash** %8, align 8
  %201 = getelementptr inbounds %struct.ip_set_hash, %struct.ip_set_hash* %200, i32 0, i32 0
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %201, align 8
  %203 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %182, i32 %188, i32 %193, i64 %196, %struct.ip_set_hash* %199, %struct.TYPE_3__* %202)
  store i32 0, i32* %4, align 4
  br label %204

204:                                              ; preds = %179, %121, %107, %88, %50, %26
  %205 = load i32, i32* %4, align 4
  ret i32 %205
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ip_set_optattr_netorder(%struct.nlattr**, i64) #1

declare dso_local i64 @ip_set_get_h32(%struct.nlattr*) #1

declare dso_local %struct.ip_set_hash* @kzalloc(i32, i32) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @htable_bits(i64) #1

declare dso_local i64 @htable_size(i32) #1

declare dso_local i32 @kfree(%struct.ip_set_hash*) #1

declare dso_local %struct.TYPE_3__* @ip_set_alloc(i64) #1

declare dso_local i32 @ip_set_timeout_uget(%struct.nlattr*) #1

declare dso_local i32 @hash_ipport4_gc_init(%struct.ip_set*) #1

declare dso_local i32 @hash_ipport6_gc_init(%struct.ip_set*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i64, %struct.ip_set_hash*, %struct.TYPE_3__*) #1

declare dso_local i32 @jhash_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
