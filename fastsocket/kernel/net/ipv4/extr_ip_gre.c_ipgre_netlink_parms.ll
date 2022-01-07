; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_gre.c_ipgre_netlink_parms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_gre.c_ipgre_netlink_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.ip_tunnel_parm = type { %struct.TYPE_2__, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i32, i8*, i8*, i8*, i8*, i32 }

@IPPROTO_GRE = common dso_local global i32 0, align 4
@IFLA_GRE_LINK = common dso_local global i64 0, align 8
@IFLA_GRE_IFLAGS = common dso_local global i64 0, align 8
@IFLA_GRE_OFLAGS = common dso_local global i64 0, align 8
@IFLA_GRE_IKEY = common dso_local global i64 0, align 8
@IFLA_GRE_OKEY = common dso_local global i64 0, align 8
@IFLA_GRE_LOCAL = common dso_local global i64 0, align 8
@IFLA_GRE_REMOTE = common dso_local global i64 0, align 8
@IFLA_GRE_TTL = common dso_local global i64 0, align 8
@IFLA_GRE_TOS = common dso_local global i64 0, align 8
@IFLA_GRE_PMTUDISC = common dso_local global i64 0, align 8
@IP_DF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlattr**, %struct.nlattr**, %struct.ip_tunnel_parm*)* @ipgre_netlink_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipgre_netlink_parms(%struct.nlattr** %0, %struct.nlattr** %1, %struct.ip_tunnel_parm* %2) #0 {
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.ip_tunnel_parm*, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  store %struct.ip_tunnel_parm* %2, %struct.ip_tunnel_parm** %6, align 8
  %7 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %8 = call i32 @memset(%struct.ip_tunnel_parm* %7, i32 0, i32 88)
  %9 = load i32, i32* @IPPROTO_GRE, align 4
  %10 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %11 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 5
  store i32 %9, i32* %12, align 8
  %13 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %14 = icmp ne %struct.nlattr** %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %167

16:                                               ; preds = %3
  %17 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %18 = load i64, i64* @IFLA_GRE_LINK, align 8
  %19 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %18
  %20 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %21 = icmp ne %struct.nlattr* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %24 = load i64, i64* @IFLA_GRE_LINK, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = call i32 @nla_get_u32(%struct.nlattr* %26)
  %28 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %29 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %22, %16
  %31 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %32 = load i64, i64* @IFLA_GRE_IFLAGS, align 8
  %33 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %32
  %34 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %35 = icmp ne %struct.nlattr* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %38 = load i64, i64* @IFLA_GRE_IFLAGS, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = call i32 @nla_get_be16(%struct.nlattr* %40)
  %42 = call i8* @gre_flags_to_tnl_flags(i32 %41)
  %43 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %44 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  br label %45

45:                                               ; preds = %36, %30
  %46 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %47 = load i64, i64* @IFLA_GRE_OFLAGS, align 8
  %48 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %46, i64 %47
  %49 = load %struct.nlattr*, %struct.nlattr** %48, align 8
  %50 = icmp ne %struct.nlattr* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %53 = load i64, i64* @IFLA_GRE_OFLAGS, align 8
  %54 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %52, i64 %53
  %55 = load %struct.nlattr*, %struct.nlattr** %54, align 8
  %56 = call i32 @nla_get_be16(%struct.nlattr* %55)
  %57 = call i8* @gre_flags_to_tnl_flags(i32 %56)
  %58 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %59 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %51, %45
  %61 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %62 = load i64, i64* @IFLA_GRE_IKEY, align 8
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %61, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = icmp ne %struct.nlattr* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %68 = load i64, i64* @IFLA_GRE_IKEY, align 8
  %69 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %67, i64 %68
  %70 = load %struct.nlattr*, %struct.nlattr** %69, align 8
  %71 = call i8* @nla_get_be32(%struct.nlattr* %70)
  %72 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %73 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %66, %60
  %75 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %76 = load i64, i64* @IFLA_GRE_OKEY, align 8
  %77 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %75, i64 %76
  %78 = load %struct.nlattr*, %struct.nlattr** %77, align 8
  %79 = icmp ne %struct.nlattr* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %74
  %81 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %82 = load i64, i64* @IFLA_GRE_OKEY, align 8
  %83 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %81, i64 %82
  %84 = load %struct.nlattr*, %struct.nlattr** %83, align 8
  %85 = call i8* @nla_get_be32(%struct.nlattr* %84)
  %86 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %87 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  br label %88

88:                                               ; preds = %80, %74
  %89 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %90 = load i64, i64* @IFLA_GRE_LOCAL, align 8
  %91 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %89, i64 %90
  %92 = load %struct.nlattr*, %struct.nlattr** %91, align 8
  %93 = icmp ne %struct.nlattr* %92, null
  br i1 %93, label %94, label %103

94:                                               ; preds = %88
  %95 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %96 = load i64, i64* @IFLA_GRE_LOCAL, align 8
  %97 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %95, i64 %96
  %98 = load %struct.nlattr*, %struct.nlattr** %97, align 8
  %99 = call i8* @nla_get_be32(%struct.nlattr* %98)
  %100 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %101 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 4
  store i8* %99, i8** %102, align 8
  br label %103

103:                                              ; preds = %94, %88
  %104 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %105 = load i64, i64* @IFLA_GRE_REMOTE, align 8
  %106 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %104, i64 %105
  %107 = load %struct.nlattr*, %struct.nlattr** %106, align 8
  %108 = icmp ne %struct.nlattr* %107, null
  br i1 %108, label %109, label %118

109:                                              ; preds = %103
  %110 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %111 = load i64, i64* @IFLA_GRE_REMOTE, align 8
  %112 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %110, i64 %111
  %113 = load %struct.nlattr*, %struct.nlattr** %112, align 8
  %114 = call i8* @nla_get_be32(%struct.nlattr* %113)
  %115 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %116 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 3
  store i8* %114, i8** %117, align 8
  br label %118

118:                                              ; preds = %109, %103
  %119 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %120 = load i64, i64* @IFLA_GRE_TTL, align 8
  %121 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %119, i64 %120
  %122 = load %struct.nlattr*, %struct.nlattr** %121, align 8
  %123 = icmp ne %struct.nlattr* %122, null
  br i1 %123, label %124, label %133

124:                                              ; preds = %118
  %125 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %126 = load i64, i64* @IFLA_GRE_TTL, align 8
  %127 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %125, i64 %126
  %128 = load %struct.nlattr*, %struct.nlattr** %127, align 8
  %129 = call i8* @nla_get_u8(%struct.nlattr* %128)
  %130 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %131 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 2
  store i8* %129, i8** %132, align 8
  br label %133

133:                                              ; preds = %124, %118
  %134 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %135 = load i64, i64* @IFLA_GRE_TOS, align 8
  %136 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %134, i64 %135
  %137 = load %struct.nlattr*, %struct.nlattr** %136, align 8
  %138 = icmp ne %struct.nlattr* %137, null
  br i1 %138, label %139, label %148

139:                                              ; preds = %133
  %140 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %141 = load i64, i64* @IFLA_GRE_TOS, align 8
  %142 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %140, i64 %141
  %143 = load %struct.nlattr*, %struct.nlattr** %142, align 8
  %144 = call i8* @nla_get_u8(%struct.nlattr* %143)
  %145 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %146 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 1
  store i8* %144, i8** %147, align 8
  br label %148

148:                                              ; preds = %139, %133
  %149 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %150 = load i64, i64* @IFLA_GRE_PMTUDISC, align 8
  %151 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %149, i64 %150
  %152 = load %struct.nlattr*, %struct.nlattr** %151, align 8
  %153 = icmp ne %struct.nlattr* %152, null
  br i1 %153, label %154, label %161

154:                                              ; preds = %148
  %155 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %156 = load i64, i64* @IFLA_GRE_PMTUDISC, align 8
  %157 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %155, i64 %156
  %158 = load %struct.nlattr*, %struct.nlattr** %157, align 8
  %159 = call i8* @nla_get_u8(%struct.nlattr* %158)
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %167

161:                                              ; preds = %154, %148
  %162 = load i32, i32* @IP_DF, align 4
  %163 = call i32 @htons(i32 %162)
  %164 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %165 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  store i32 %163, i32* %166, align 8
  br label %167

167:                                              ; preds = %15, %161, %154
  ret void
}

declare dso_local i32 @memset(%struct.ip_tunnel_parm*, i32, i32) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i8* @gre_flags_to_tnl_flags(i32) #1

declare dso_local i32 @nla_get_be16(%struct.nlattr*) #1

declare dso_local i8* @nla_get_be32(%struct.nlattr*) #1

declare dso_local i8* @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
