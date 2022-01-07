; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_verify_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_verify_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sctp_chunk = type { i32 }
%union.sctp_params = type { %struct.TYPE_2__* }
%struct.sctp_hmac_algo_param = type { i32* }

@SCTP_IERROR_NO_ERROR = common dso_local global i32 0, align 4
@SCTP_IERROR_ABORT = common dso_local global i32 0, align 4
@sctp_addip_enable = common dso_local global i32 0, align 4
@sctp_prsctp_enable = common dso_local global i32 0, align 4
@sctp_auth_enable = common dso_local global i32 0, align 4
@SCTP_AUTH_RANDOM_LENGTH = common dso_local global i32 0, align 4
@SCTP_AUTH_HMAC_ID_SHA1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Unrecognized param: %d for chunk %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_association*, %struct.TYPE_2__*, i32, %struct.sctp_chunk*, %struct.sctp_chunk**)* @sctp_verify_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_verify_param(%struct.sctp_association* %0, %struct.TYPE_2__* %1, i32 %2, %struct.sctp_chunk* %3, %struct.sctp_chunk** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %union.sctp_params, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sctp_chunk*, align 8
  %11 = alloca %struct.sctp_chunk**, align 8
  %12 = alloca %struct.sctp_hmac_algo_param*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = getelementptr inbounds %union.sctp_params, %union.sctp_params* %7, i32 0, i32 0
  store %struct.TYPE_2__* %1, %struct.TYPE_2__** %17, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.sctp_chunk* %3, %struct.sctp_chunk** %10, align 8
  store %struct.sctp_chunk** %4, %struct.sctp_chunk*** %11, align 8
  %18 = load i32, i32* @SCTP_IERROR_NO_ERROR, align 4
  store i32 %18, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %19 = bitcast %union.sctp_params* %7 to %struct.TYPE_2__**
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %146 [
    i32 135, label %23
    i32 134, label %23
    i32 141, label %23
    i32 130, label %23
    i32 131, label %23
    i32 138, label %23
    i32 128, label %23
    i32 140, label %23
    i32 143, label %23
    i32 129, label %24
    i32 132, label %32
    i32 136, label %37
    i32 139, label %45
    i32 133, label %50
    i32 142, label %74
    i32 137, label %94
  ]

23:                                               ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5
  br label %160

24:                                               ; preds = %5
  %25 = getelementptr inbounds %union.sctp_params, %union.sctp_params* %7, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = call i32 @sctp_verify_ext_param(%struct.TYPE_2__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @SCTP_IERROR_ABORT, align 4
  store i32 %30, i32* %6, align 4
  br label %162

31:                                               ; preds = %24
  br label %160

32:                                               ; preds = %5
  %33 = load i32, i32* @sctp_addip_enable, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %160

36:                                               ; preds = %32
  br label %145

37:                                               ; preds = %5
  %38 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %39 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %40 = load %struct.sctp_chunk**, %struct.sctp_chunk*** %11, align 8
  %41 = getelementptr inbounds %union.sctp_params, %union.sctp_params* %7, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = call i32 @sctp_process_hn_param(%struct.sctp_association* %38, %struct.TYPE_2__* %42, %struct.sctp_chunk* %39, %struct.sctp_chunk** %40)
  %44 = load i32, i32* @SCTP_IERROR_ABORT, align 4
  store i32 %44, i32* %13, align 4
  br label %160

45:                                               ; preds = %5
  %46 = load i32, i32* @sctp_prsctp_enable, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %160

49:                                               ; preds = %45
  br label %145

50:                                               ; preds = %5
  %51 = load i32, i32* @sctp_auth_enable, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  br label %145

54:                                               ; preds = %50
  %55 = load i32, i32* @SCTP_AUTH_RANDOM_LENGTH, align 4
  %56 = sext i32 %55 to i64
  %57 = bitcast %union.sctp_params* %7 to %struct.TYPE_2__**
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ntohs(i32 %60)
  %62 = sext i32 %61 to i64
  %63 = sub i64 %62, 4
  %64 = icmp ne i64 %56, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %54
  %66 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %67 = bitcast %union.sctp_params* %7 to %struct.TYPE_2__**
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %70 = load %struct.sctp_chunk**, %struct.sctp_chunk*** %11, align 8
  %71 = call i32 @sctp_process_inv_paramlength(%struct.sctp_association* %66, %struct.TYPE_2__* %68, %struct.sctp_chunk* %69, %struct.sctp_chunk** %70)
  %72 = load i32, i32* @SCTP_IERROR_ABORT, align 4
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %65, %54
  br label %160

74:                                               ; preds = %5
  %75 = load i32, i32* @sctp_auth_enable, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  br label %145

78:                                               ; preds = %74
  %79 = bitcast %union.sctp_params* %7 to %struct.TYPE_2__**
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ntohs(i32 %82)
  %84 = icmp slt i32 260, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %78
  %86 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %87 = bitcast %union.sctp_params* %7 to %struct.TYPE_2__**
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %90 = load %struct.sctp_chunk**, %struct.sctp_chunk*** %11, align 8
  %91 = call i32 @sctp_process_inv_paramlength(%struct.sctp_association* %86, %struct.TYPE_2__* %88, %struct.sctp_chunk* %89, %struct.sctp_chunk** %90)
  %92 = load i32, i32* @SCTP_IERROR_ABORT, align 4
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %85, %78
  br label %160

94:                                               ; preds = %5
  %95 = load i32, i32* @sctp_auth_enable, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %94
  br label %145

98:                                               ; preds = %94
  %99 = bitcast %union.sctp_params* %7 to %struct.TYPE_2__**
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = bitcast %struct.TYPE_2__* %100 to %struct.sctp_hmac_algo_param*
  store %struct.sctp_hmac_algo_param* %101, %struct.sctp_hmac_algo_param** %12, align 8
  %102 = bitcast %union.sctp_params* %7 to %struct.TYPE_2__**
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ntohs(i32 %105)
  %107 = sext i32 %106 to i64
  %108 = sub i64 %107, 4
  %109 = lshr i64 %108, 1
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %111

111:                                              ; preds = %129, %98
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %14, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %132

115:                                              ; preds = %111
  %116 = load %struct.sctp_hmac_algo_param*, %struct.sctp_hmac_algo_param** %12, align 8
  %117 = getelementptr inbounds %struct.sctp_hmac_algo_param, %struct.sctp_hmac_algo_param* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %16, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ntohs(i32 %122)
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* @SCTP_AUTH_HMAC_ID_SHA1, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %115
  br label %132

128:                                              ; preds = %115
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %16, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %16, align 4
  br label %111

132:                                              ; preds = %127, %111
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* @SCTP_AUTH_HMAC_ID_SHA1, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %132
  %137 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %138 = bitcast %union.sctp_params* %7 to %struct.TYPE_2__**
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %141 = load %struct.sctp_chunk**, %struct.sctp_chunk*** %11, align 8
  %142 = call i32 @sctp_process_inv_paramlength(%struct.sctp_association* %137, %struct.TYPE_2__* %139, %struct.sctp_chunk* %140, %struct.sctp_chunk** %141)
  %143 = load i32, i32* @SCTP_IERROR_ABORT, align 4
  store i32 %143, i32* %13, align 4
  br label %144

144:                                              ; preds = %136, %132
  br label %160

145:                                              ; preds = %97, %77, %53, %49, %36
  br label %146

146:                                              ; preds = %5, %145
  %147 = bitcast %union.sctp_params* %7 to %struct.TYPE_2__**
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @ntohs(i32 %150)
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @SCTP_DEBUG_PRINTK(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %151, i32 %152)
  %154 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %155 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %156 = load %struct.sctp_chunk**, %struct.sctp_chunk*** %11, align 8
  %157 = getelementptr inbounds %union.sctp_params, %union.sctp_params* %7, i32 0, i32 0
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = call i32 @sctp_process_unk_param(%struct.sctp_association* %154, %struct.TYPE_2__* %158, %struct.sctp_chunk* %155, %struct.sctp_chunk** %156)
  store i32 %159, i32* %13, align 4
  br label %160

160:                                              ; preds = %146, %144, %93, %73, %48, %37, %35, %31, %23
  %161 = load i32, i32* %13, align 4
  store i32 %161, i32* %6, align 4
  br label %162

162:                                              ; preds = %160, %29
  %163 = load i32, i32* %6, align 4
  ret i32 %163
}

declare dso_local i32 @sctp_verify_ext_param(%struct.TYPE_2__*) #1

declare dso_local i32 @sctp_process_hn_param(%struct.sctp_association*, %struct.TYPE_2__*, %struct.sctp_chunk*, %struct.sctp_chunk**) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @sctp_process_inv_paramlength(%struct.sctp_association*, %struct.TYPE_2__*, %struct.sctp_chunk*, %struct.sctp_chunk**) #1

declare dso_local i32 @SCTP_DEBUG_PRINTK(i8*, i32, i32) #1

declare dso_local i32 @sctp_process_unk_param(%struct.sctp_association*, %struct.TYPE_2__*, %struct.sctp_chunk*, %struct.sctp_chunk**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
