; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-util.c___cvmx_helper_setup_gmx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-util.c___cvmx_helper_setup_gmx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_gmxx_tx_prts = type { i8* }
%union.cvmx_gmxx_rx_prts = type { i8* }
%union.cvmx_pko_reg_gmx_port_mode = type { i8* }
%union.cvmx_gmxx_txx_thresh = type { i8* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@CVMX_HELPER_INTERFACE_MODE_RGMII = common dso_local global i64 0, align 8
@CVMX_HELPER_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@CVMX_HELPER_INTERFACE_MODE_GMII = common dso_local global i64 0, align 8
@CVMX_HELPER_INTERFACE_MODE_XAUI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"__cvmx_helper_setup_gmx: Illegal num_ports\0A\00", align 1
@OCTEON_CN30XX = common dso_local global i32 0, align 4
@OCTEON_CN31XX = common dso_local global i32 0, align 4
@OCTEON_CN50XX = common dso_local global i32 0, align 4
@CVMX_PKO_REG_GMX_PORT_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cvmx_helper_setup_gmx(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.cvmx_gmxx_tx_prts, align 8
  %7 = alloca %union.cvmx_gmxx_rx_prts, align 8
  %8 = alloca %union.cvmx_pko_reg_gmx_port_mode, align 8
  %9 = alloca %union.cvmx_gmxx_txx_thresh, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @CVMX_GMXX_TX_PRTS(i32 %11)
  %13 = call i8* @cvmx_read_csr(i32 %12)
  %14 = bitcast %union.cvmx_gmxx_tx_prts* %6 to i8**
  store i8* %13, i8** %14, align 8
  %15 = load i32, i32* %5, align 4
  %16 = bitcast %union.cvmx_gmxx_tx_prts* %6 to %struct.TYPE_5__*
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @CVMX_GMXX_TX_PRTS(i32 %18)
  %20 = bitcast %union.cvmx_gmxx_tx_prts* %6 to i8**
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @cvmx_write_csr(i32 %19, i8* %21)
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @cvmx_helper_interface_get_mode(i32 %23)
  %25 = load i64, i64* @CVMX_HELPER_INTERFACE_MODE_RGMII, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %42, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @cvmx_helper_interface_get_mode(i32 %28)
  %30 = load i64, i64* @CVMX_HELPER_INTERFACE_MODE_SGMII, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @cvmx_helper_interface_get_mode(i32 %33)
  %35 = load i64, i64* @CVMX_HELPER_INTERFACE_MODE_GMII, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = call i64 @cvmx_helper_interface_get_mode(i32 %38)
  %40 = load i64, i64* @CVMX_HELPER_INTERFACE_MODE_XAUI, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %37, %32, %27, %2
  %43 = load i32, i32* %5, align 4
  %44 = icmp sgt i32 %43, 4
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %201

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @CVMX_GMXX_RX_PRTS(i32 %48)
  %50 = call i8* @cvmx_read_csr(i32 %49)
  %51 = bitcast %union.cvmx_gmxx_rx_prts* %7 to i8**
  store i8* %50, i8** %51, align 8
  %52 = load i32, i32* %5, align 4
  %53 = bitcast %union.cvmx_gmxx_rx_prts* %7 to %struct.TYPE_6__*
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @CVMX_GMXX_RX_PRTS(i32 %55)
  %57 = bitcast %union.cvmx_gmxx_rx_prts* %7 to i8**
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @cvmx_write_csr(i32 %56, i8* %58)
  br label %60

60:                                               ; preds = %47, %37
  %61 = load i32, i32* @OCTEON_CN30XX, align 4
  %62 = call i64 @OCTEON_IS_MODEL(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %145, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* @OCTEON_CN31XX, align 4
  %66 = call i64 @OCTEON_IS_MODEL(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %145, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* @OCTEON_CN50XX, align 4
  %70 = call i64 @OCTEON_IS_MODEL(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %145, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* @CVMX_PKO_REG_GMX_PORT_MODE, align 4
  %74 = call i8* @cvmx_read_csr(i32 %73)
  %75 = bitcast %union.cvmx_pko_reg_gmx_port_mode* %8 to i8**
  store i8* %74, i8** %75, align 8
  %76 = load i32, i32* %4, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %109

78:                                               ; preds = %72
  %79 = load i32, i32* %5, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = bitcast %union.cvmx_pko_reg_gmx_port_mode* %8 to %struct.TYPE_7__*
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  store i32 4, i32* %83, align 8
  br label %108

84:                                               ; preds = %78
  %85 = load i32, i32* %5, align 4
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = bitcast %union.cvmx_pko_reg_gmx_port_mode* %8 to %struct.TYPE_7__*
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store i32 3, i32* %89, align 8
  br label %107

90:                                               ; preds = %84
  %91 = load i32, i32* %5, align 4
  %92 = icmp sle i32 %91, 4
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = bitcast %union.cvmx_pko_reg_gmx_port_mode* %8 to %struct.TYPE_7__*
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  store i32 2, i32* %95, align 8
  br label %106

96:                                               ; preds = %90
  %97 = load i32, i32* %5, align 4
  %98 = icmp sle i32 %97, 8
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = bitcast %union.cvmx_pko_reg_gmx_port_mode* %8 to %struct.TYPE_7__*
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  store i32 1, i32* %101, align 8
  br label %105

102:                                              ; preds = %96
  %103 = bitcast %union.cvmx_pko_reg_gmx_port_mode* %8 to %struct.TYPE_7__*
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  store i32 0, i32* %104, align 8
  br label %105

105:                                              ; preds = %102, %99
  br label %106

106:                                              ; preds = %105, %93
  br label %107

107:                                              ; preds = %106, %87
  br label %108

108:                                              ; preds = %107, %81
  br label %140

109:                                              ; preds = %72
  %110 = load i32, i32* %5, align 4
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = bitcast %union.cvmx_pko_reg_gmx_port_mode* %8 to %struct.TYPE_7__*
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  store i32 4, i32* %114, align 4
  br label %139

115:                                              ; preds = %109
  %116 = load i32, i32* %5, align 4
  %117 = icmp eq i32 %116, 2
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = bitcast %union.cvmx_pko_reg_gmx_port_mode* %8 to %struct.TYPE_7__*
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  store i32 3, i32* %120, align 4
  br label %138

121:                                              ; preds = %115
  %122 = load i32, i32* %5, align 4
  %123 = icmp sle i32 %122, 4
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = bitcast %union.cvmx_pko_reg_gmx_port_mode* %8 to %struct.TYPE_7__*
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  store i32 2, i32* %126, align 4
  br label %137

127:                                              ; preds = %121
  %128 = load i32, i32* %5, align 4
  %129 = icmp sle i32 %128, 8
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = bitcast %union.cvmx_pko_reg_gmx_port_mode* %8 to %struct.TYPE_7__*
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  store i32 1, i32* %132, align 4
  br label %136

133:                                              ; preds = %127
  %134 = bitcast %union.cvmx_pko_reg_gmx_port_mode* %8 to %struct.TYPE_7__*
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  store i32 0, i32* %135, align 4
  br label %136

136:                                              ; preds = %133, %130
  br label %137

137:                                              ; preds = %136, %124
  br label %138

138:                                              ; preds = %137, %118
  br label %139

139:                                              ; preds = %138, %112
  br label %140

140:                                              ; preds = %139, %108
  %141 = load i32, i32* @CVMX_PKO_REG_GMX_PORT_MODE, align 4
  %142 = bitcast %union.cvmx_pko_reg_gmx_port_mode* %8 to i8**
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @cvmx_write_csr(i32 %141, i8* %143)
  br label %145

145:                                              ; preds = %140, %68, %64, %60
  %146 = load i32, i32* %4, align 4
  %147 = call i32 @CVMX_GMXX_TXX_THRESH(i32 0, i32 %146)
  %148 = call i8* @cvmx_read_csr(i32 %147)
  %149 = bitcast %union.cvmx_gmxx_txx_thresh* %9 to i8**
  store i8* %148, i8** %149, align 8
  %150 = load i32, i32* @OCTEON_CN30XX, align 4
  %151 = call i64 @OCTEON_IS_MODEL(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %161, label %153

153:                                              ; preds = %145
  %154 = load i32, i32* @OCTEON_CN31XX, align 4
  %155 = call i64 @OCTEON_IS_MODEL(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %153
  %158 = load i32, i32* @OCTEON_CN50XX, align 4
  %159 = call i64 @OCTEON_IS_MODEL(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %157, %153, %145
  %162 = bitcast %union.cvmx_gmxx_txx_thresh* %9 to %struct.TYPE_8__*
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  store i32 64, i32* %163, align 8
  br label %181

164:                                              ; preds = %157
  %165 = load i32, i32* %5, align 4
  %166 = icmp sle i32 %165, 1
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = bitcast %union.cvmx_gmxx_txx_thresh* %9 to %struct.TYPE_8__*
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  store i32 256, i32* %169, align 8
  br label %180

170:                                              ; preds = %164
  %171 = load i32, i32* %5, align 4
  %172 = icmp eq i32 %171, 2
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = bitcast %union.cvmx_gmxx_txx_thresh* %9 to %struct.TYPE_8__*
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  store i32 128, i32* %175, align 8
  br label %179

176:                                              ; preds = %170
  %177 = bitcast %union.cvmx_gmxx_txx_thresh* %9 to %struct.TYPE_8__*
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  store i32 64, i32* %178, align 8
  br label %179

179:                                              ; preds = %176, %173
  br label %180

180:                                              ; preds = %179, %167
  br label %181

181:                                              ; preds = %180, %161
  %182 = load i32, i32* %5, align 4
  %183 = icmp sgt i32 %182, 4
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  store i32 4, i32* %5, align 4
  br label %185

185:                                              ; preds = %184, %181
  store i32 0, i32* %10, align 4
  br label %186

186:                                              ; preds = %197, %185
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* %5, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %200

190:                                              ; preds = %186
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* %4, align 4
  %193 = call i32 @CVMX_GMXX_TXX_THRESH(i32 %191, i32 %192)
  %194 = bitcast %union.cvmx_gmxx_txx_thresh* %9 to i8**
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 @cvmx_write_csr(i32 %193, i8* %195)
  br label %197

197:                                              ; preds = %190
  %198 = load i32, i32* %10, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %10, align 4
  br label %186

200:                                              ; preds = %186
  store i32 0, i32* %3, align 4
  br label %201

201:                                              ; preds = %200, %45
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GMXX_TX_PRTS(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

declare dso_local i64 @cvmx_helper_interface_get_mode(i32) #1

declare dso_local i32 @cvmx_dprintf(i8*) #1

declare dso_local i32 @CVMX_GMXX_RX_PRTS(i32) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @CVMX_GMXX_TXX_THRESH(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
