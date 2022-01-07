; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/tcm_fc/extr_tfc_sess.c_ft_prli_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/tcm_fc/extr_tfc_sess.c_ft_prli_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport_priv = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fc_els_spp = type { i32, i8* }
%struct.ft_tport = type { i32 }
%struct.ft_sess = type { i32, i32, i32 }
%struct.ft_node_acl = type { i32 }

@FC_SPP_OPA_VAL = common dso_local global i32 0, align 4
@FC_SPP_RPA_VAL = common dso_local global i32 0, align 4
@FC_SPP_RESP_NO_PA = common dso_local global i32 0, align 4
@FCP_SPPF_INIT_FCN = common dso_local global i32 0, align 4
@FCP_SPPF_TARG_FCN = common dso_local global i32 0, align 4
@FC_SPP_RESP_INVL = common dso_local global i32 0, align 4
@FC_SPP_EST_IMG_PAIR = common dso_local global i32 0, align 4
@FC_SPP_RESP_CONF = common dso_local global i32 0, align 4
@FC_SPP_RESP_RES = common dso_local global i32 0, align 4
@FCP_SPPF_RETRY = common dso_local global i32 0, align 4
@FC_SPP_RESP_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_rport_priv*, i32, %struct.fc_els_spp*, %struct.fc_els_spp*)* @ft_prli_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ft_prli_locked(%struct.fc_rport_priv* %0, i32 %1, %struct.fc_els_spp* %2, %struct.fc_els_spp* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fc_rport_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fc_els_spp*, align 8
  %9 = alloca %struct.fc_els_spp*, align 8
  %10 = alloca %struct.ft_tport*, align 8
  %11 = alloca %struct.ft_sess*, align 8
  %12 = alloca %struct.ft_node_acl*, align 8
  %13 = alloca i32, align 4
  store %struct.fc_rport_priv* %0, %struct.fc_rport_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.fc_els_spp* %2, %struct.fc_els_spp** %8, align 8
  store %struct.fc_els_spp* %3, %struct.fc_els_spp** %9, align 8
  %14 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %15 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ft_tport* @ft_tport_create(i32 %16)
  store %struct.ft_tport* %17, %struct.ft_tport** %10, align 8
  %18 = load %struct.ft_tport*, %struct.ft_tport** %10, align 8
  %19 = icmp ne %struct.ft_tport* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  br label %131

21:                                               ; preds = %4
  %22 = load %struct.ft_tport*, %struct.ft_tport** %10, align 8
  %23 = getelementptr inbounds %struct.ft_tport, %struct.ft_tport* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %26 = call %struct.ft_node_acl* @ft_acl_get(i32 %24, %struct.fc_rport_priv* %25)
  store %struct.ft_node_acl* %26, %struct.ft_node_acl** %12, align 8
  %27 = load %struct.ft_node_acl*, %struct.ft_node_acl** %12, align 8
  %28 = icmp ne %struct.ft_node_acl* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  br label %131

30:                                               ; preds = %21
  %31 = load %struct.fc_els_spp*, %struct.fc_els_spp** %8, align 8
  %32 = icmp ne %struct.fc_els_spp* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  br label %115

34:                                               ; preds = %30
  %35 = load %struct.fc_els_spp*, %struct.fc_els_spp** %8, align 8
  %36 = getelementptr inbounds %struct.fc_els_spp, %struct.fc_els_spp* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @FC_SPP_OPA_VAL, align 4
  %39 = load i32, i32* @FC_SPP_RPA_VAL, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* @FC_SPP_RESP_NO_PA, align 4
  store i32 %44, i32* %5, align 4
  br label %144

45:                                               ; preds = %34
  %46 = load %struct.fc_els_spp*, %struct.fc_els_spp** %8, align 8
  %47 = getelementptr inbounds %struct.fc_els_spp, %struct.fc_els_spp* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @ntohl(i8* %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @FCP_SPPF_INIT_FCN, align 4
  %52 = load i32, i32* @FCP_SPPF_TARG_FCN, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %45
  %57 = load i32, i32* @FC_SPP_RESP_INVL, align 4
  store i32 %57, i32* %5, align 4
  br label %144

58:                                               ; preds = %45
  %59 = load %struct.fc_els_spp*, %struct.fc_els_spp** %8, align 8
  %60 = getelementptr inbounds %struct.fc_els_spp, %struct.fc_els_spp* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @FC_SPP_EST_IMG_PAIR, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %114

65:                                               ; preds = %58
  %66 = load i32, i32* @FC_SPP_EST_IMG_PAIR, align 4
  %67 = load %struct.fc_els_spp*, %struct.fc_els_spp** %9, align 8
  %68 = getelementptr inbounds %struct.fc_els_spp, %struct.fc_els_spp* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @FCP_SPPF_INIT_FCN, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %65
  %76 = load i32, i32* @FC_SPP_RESP_CONF, align 4
  store i32 %76, i32* %5, align 4
  br label %144

77:                                               ; preds = %65
  %78 = load %struct.ft_tport*, %struct.ft_tport** %10, align 8
  %79 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %80 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ft_node_acl*, %struct.ft_node_acl** %12, align 8
  %84 = call %struct.ft_sess* @ft_sess_create(%struct.ft_tport* %78, i32 %82, %struct.ft_node_acl* %83)
  store %struct.ft_sess* %84, %struct.ft_sess** %11, align 8
  %85 = load %struct.ft_sess*, %struct.ft_sess** %11, align 8
  %86 = icmp ne %struct.ft_sess* %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %77
  %88 = load i32, i32* @FC_SPP_RESP_RES, align 4
  store i32 %88, i32* %5, align 4
  br label %144

89:                                               ; preds = %77
  %90 = load %struct.ft_sess*, %struct.ft_sess** %11, align 8
  %91 = getelementptr inbounds %struct.ft_sess, %struct.ft_sess* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %96 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %94, %89
  %100 = load i32, i32* %13, align 4
  %101 = load %struct.ft_sess*, %struct.ft_sess** %11, align 8
  %102 = getelementptr inbounds %struct.ft_sess, %struct.ft_sess* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %104 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ft_sess*, %struct.ft_sess** %11, align 8
  %108 = getelementptr inbounds %struct.ft_sess, %struct.ft_sess* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %110 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ft_sess*, %struct.ft_sess** %11, align 8
  %113 = getelementptr inbounds %struct.ft_sess, %struct.ft_sess* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %99, %58
  br label %115

115:                                              ; preds = %114, %33
  %116 = load %struct.fc_els_spp*, %struct.fc_els_spp** %9, align 8
  %117 = getelementptr inbounds %struct.fc_els_spp, %struct.fc_els_spp* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @ntohl(i8* %118)
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* @FCP_SPPF_RETRY, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %13, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* @FCP_SPPF_TARG_FCN, align 4
  %126 = or i32 %124, %125
  %127 = call i8* @htonl(i32 %126)
  %128 = load %struct.fc_els_spp*, %struct.fc_els_spp** %9, align 8
  %129 = getelementptr inbounds %struct.fc_els_spp, %struct.fc_els_spp* %128, i32 0, i32 1
  store i8* %127, i8** %129, align 8
  %130 = load i32, i32* @FC_SPP_RESP_ACK, align 4
  store i32 %130, i32* %5, align 4
  br label %144

131:                                              ; preds = %29, %20
  %132 = load %struct.fc_els_spp*, %struct.fc_els_spp** %9, align 8
  %133 = getelementptr inbounds %struct.fc_els_spp, %struct.fc_els_spp* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @ntohl(i8* %134)
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* @FCP_SPPF_TARG_FCN, align 4
  %137 = xor i32 %136, -1
  %138 = load i32, i32* %13, align 4
  %139 = and i32 %138, %137
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %13, align 4
  %141 = call i8* @htonl(i32 %140)
  %142 = load %struct.fc_els_spp*, %struct.fc_els_spp** %9, align 8
  %143 = getelementptr inbounds %struct.fc_els_spp, %struct.fc_els_spp* %142, i32 0, i32 1
  store i8* %141, i8** %143, align 8
  store i32 0, i32* %5, align 4
  br label %144

144:                                              ; preds = %131, %115, %87, %75, %56, %43
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local %struct.ft_tport* @ft_tport_create(i32) #1

declare dso_local %struct.ft_node_acl* @ft_acl_get(i32, %struct.fc_rport_priv*) #1

declare dso_local i32 @ntohl(i8*) #1

declare dso_local %struct.ft_sess* @ft_sess_create(%struct.ft_tport*, i32, %struct.ft_node_acl*) #1

declare dso_local i8* @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
