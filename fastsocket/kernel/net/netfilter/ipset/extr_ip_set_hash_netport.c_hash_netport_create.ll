; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_hash_netport.c_hash_netport_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_hash_netport.c_hash_netport_create.c"
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
@hash_netport4_tvariant = common dso_local global i32 0, align 4
@hash_netport6_tvariant = common dso_local global i32 0, align 4
@hash_netport4_variant = common dso_local global i32 0, align 4
@hash_netport6_variant = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"create %s hashsize %u (%u) maxelem %u: %p(%p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_set*, %struct.nlattr**, i64)* @hash_netport_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_netport_create(%struct.ip_set* %0, %struct.nlattr** %1, i64 %2) #0 {
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
  br label %215

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
  br label %215

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
  %84 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %85 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @AF_INET, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 32, i32 128
  %91 = sext i32 %90 to i64
  %92 = mul i64 4, %91
  %93 = add i64 24, %92
  %94 = trunc i64 %93 to i32
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call %struct.ip_set_hash* @kzalloc(i32 %94, i32 %95)
  store %struct.ip_set_hash* %96, %struct.ip_set_hash** %8, align 8
  %97 = load %struct.ip_set_hash*, %struct.ip_set_hash** %8, align 8
  %98 = icmp ne %struct.ip_set_hash* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %83
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %215

102:                                              ; preds = %83
  %103 = load i64, i64* %10, align 8
  %104 = load %struct.ip_set_hash*, %struct.ip_set_hash** %8, align 8
  %105 = getelementptr inbounds %struct.ip_set_hash, %struct.ip_set_hash* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  %106 = load %struct.ip_set_hash*, %struct.ip_set_hash** %8, align 8
  %107 = getelementptr inbounds %struct.ip_set_hash, %struct.ip_set_hash* %106, i32 0, i32 3
  %108 = call i32 @get_random_bytes(i32* %107, i32 4)
  %109 = load i32, i32* @IPSET_NO_TIMEOUT, align 4
  %110 = load %struct.ip_set_hash*, %struct.ip_set_hash** %8, align 8
  %111 = getelementptr inbounds %struct.ip_set_hash, %struct.ip_set_hash* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = load i64, i64* %9, align 8
  %113 = call i32 @htable_bits(i64 %112)
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %11, align 4
  %115 = call i64 @htable_size(i32 %114)
  store i64 %115, i64* %12, align 8
  %116 = load i64, i64* %12, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %102
  %119 = load %struct.ip_set_hash*, %struct.ip_set_hash** %8, align 8
  %120 = call i32 @kfree(%struct.ip_set_hash* %119)
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %4, align 4
  br label %215

123:                                              ; preds = %102
  %124 = load i64, i64* %12, align 8
  %125 = call %struct.TYPE_3__* @ip_set_alloc(i64 %124)
  %126 = load %struct.ip_set_hash*, %struct.ip_set_hash** %8, align 8
  %127 = getelementptr inbounds %struct.ip_set_hash, %struct.ip_set_hash* %126, i32 0, i32 0
  store %struct.TYPE_3__* %125, %struct.TYPE_3__** %127, align 8
  %128 = load %struct.ip_set_hash*, %struct.ip_set_hash** %8, align 8
  %129 = getelementptr inbounds %struct.ip_set_hash, %struct.ip_set_hash* %128, i32 0, i32 0
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = icmp ne %struct.TYPE_3__* %130, null
  br i1 %131, label %137, label %132

132:                                              ; preds = %123
  %133 = load %struct.ip_set_hash*, %struct.ip_set_hash** %8, align 8
  %134 = call i32 @kfree(%struct.ip_set_hash* %133)
  %135 = load i32, i32* @ENOMEM, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %4, align 4
  br label %215

137:                                              ; preds = %123
  %138 = load i32, i32* %11, align 4
  %139 = load %struct.ip_set_hash*, %struct.ip_set_hash** %8, align 8
  %140 = getelementptr inbounds %struct.ip_set_hash, %struct.ip_set_hash* %139, i32 0, i32 0
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  store i32 %138, i32* %142, align 4
  %143 = load %struct.ip_set_hash*, %struct.ip_set_hash** %8, align 8
  %144 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %145 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %144, i32 0, i32 1
  store %struct.ip_set_hash* %143, %struct.ip_set_hash** %145, align 8
  %146 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %147 = load i64, i64* @IPSET_ATTR_TIMEOUT, align 8
  %148 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %146, i64 %147
  %149 = load %struct.nlattr*, %struct.nlattr** %148, align 8
  %150 = icmp ne %struct.nlattr* %149, null
  br i1 %150, label %151, label %180

151:                                              ; preds = %137
  %152 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %153 = load i64, i64* @IPSET_ATTR_TIMEOUT, align 8
  %154 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %152, i64 %153
  %155 = load %struct.nlattr*, %struct.nlattr** %154, align 8
  %156 = call i32 @ip_set_timeout_uget(%struct.nlattr* %155)
  %157 = load %struct.ip_set_hash*, %struct.ip_set_hash** %8, align 8
  %158 = getelementptr inbounds %struct.ip_set_hash, %struct.ip_set_hash* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  %159 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %160 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @AF_INET, align 8
  %163 = icmp eq i64 %161, %162
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i32* @hash_netport4_tvariant, i32* @hash_netport6_tvariant
  %166 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %167 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %166, i32 0, i32 3
  store i32* %165, i32** %167, align 8
  %168 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %169 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @AF_INET, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %151
  %174 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %175 = call i32 @hash_netport4_gc_init(%struct.ip_set* %174)
  br label %179

176:                                              ; preds = %151
  %177 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %178 = call i32 @hash_netport6_gc_init(%struct.ip_set* %177)
  br label %179

179:                                              ; preds = %176, %173
  br label %190

180:                                              ; preds = %137
  %181 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %182 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @AF_INET, align 8
  %185 = icmp eq i64 %183, %184
  %186 = zext i1 %185 to i64
  %187 = select i1 %185, i32* @hash_netport4_variant, i32* @hash_netport6_variant
  %188 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %189 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %188, i32 0, i32 3
  store i32* %187, i32** %189, align 8
  br label %190

190:                                              ; preds = %180, %179
  %191 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %192 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.ip_set_hash*, %struct.ip_set_hash** %8, align 8
  %195 = getelementptr inbounds %struct.ip_set_hash, %struct.ip_set_hash* %194, i32 0, i32 0
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @jhash_size(i32 %198)
  %200 = load %struct.ip_set_hash*, %struct.ip_set_hash** %8, align 8
  %201 = getelementptr inbounds %struct.ip_set_hash, %struct.ip_set_hash* %200, i32 0, i32 0
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.ip_set_hash*, %struct.ip_set_hash** %8, align 8
  %206 = getelementptr inbounds %struct.ip_set_hash, %struct.ip_set_hash* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %209 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %208, i32 0, i32 1
  %210 = load %struct.ip_set_hash*, %struct.ip_set_hash** %209, align 8
  %211 = load %struct.ip_set_hash*, %struct.ip_set_hash** %8, align 8
  %212 = getelementptr inbounds %struct.ip_set_hash, %struct.ip_set_hash* %211, i32 0, i32 0
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %212, align 8
  %214 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %193, i32 %199, i32 %204, i64 %207, %struct.ip_set_hash* %210, %struct.TYPE_3__* %213)
  store i32 0, i32* %4, align 4
  br label %215

215:                                              ; preds = %190, %132, %118, %99, %50, %26
  %216 = load i32, i32* %4, align 4
  ret i32 %216
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

declare dso_local i32 @hash_netport4_gc_init(%struct.ip_set*) #1

declare dso_local i32 @hash_netport6_gc_init(%struct.ip_set*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i64, %struct.ip_set_hash*, %struct.TYPE_3__*) #1

declare dso_local i32 @jhash_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
