; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-board.c_cvmx_helper_board_link_set_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-board.c_cvmx_helper_board_link_set_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_15__ = type { i8*, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_25__ = type { i8*, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_23__ = type { %struct.TYPE_21__, i8* }
%struct.TYPE_21__ = type { i32, i32, i64, i64, i64, i64 }
%struct.TYPE_24__ = type { i8*, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_14__ = type { i8*, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i64 }

@set_phy_link_flags_flow_control_mask = common dso_local global i32 0, align 4
@set_phy_link_flags_flow_control_dont_touch = common dso_local global i32 0, align 4
@CVMX_MDIO_PHY_REG_AUTONEG_ADVER = common dso_local global i32 0, align 4
@set_phy_link_flags_flow_control_enable = common dso_local global i32 0, align 4
@set_phy_link_flags_autoneg = common dso_local global i32 0, align 4
@CVMX_MDIO_PHY_REG_STATUS = common dso_local global i32 0, align 4
@CVMX_MDIO_PHY_REG_EXTENDED_STATUS = common dso_local global i32 0, align 4
@CVMX_MDIO_PHY_REG_CONTROL_1000 = common dso_local global i32 0, align 4
@CVMX_MDIO_PHY_REG_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_helper_board_link_set_phy(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_16__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__, align 8
  %9 = alloca %struct.TYPE_25__, align 8
  %10 = alloca %struct.TYPE_23__, align 8
  %11 = alloca %struct.TYPE_15__, align 8
  %12 = alloca %struct.TYPE_24__, align 8
  %13 = alloca %struct.TYPE_14__, align 8
  %14 = alloca %struct.TYPE_25__, align 8
  %15 = alloca %struct.TYPE_23__, align 8
  %16 = alloca %struct.TYPE_15__, align 8
  %17 = alloca %struct.TYPE_24__, align 8
  %18 = alloca %struct.TYPE_14__, align 8
  %19 = alloca %struct.TYPE_25__, align 8
  %20 = bitcast %struct.TYPE_16__* %5 to { i32, i64 }*
  %21 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %20, i32 0, i32 0
  store i32 %2, i32* %21, align 8
  %22 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %20, i32 0, i32 1
  store i64 %3, i64* %22, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @set_phy_link_flags_flow_control_mask, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @set_phy_link_flags_flow_control_dont_touch, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %60

28:                                               ; preds = %4
  %29 = load i32, i32* %6, align 4
  %30 = ashr i32 %29, 8
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 255
  %33 = load i32, i32* @CVMX_MDIO_PHY_REG_AUTONEG_ADVER, align 4
  %34 = call i8* @cvmx_mdio_read(i32 %30, i32 %32, i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  store i8* %34, i8** %35, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @set_phy_link_flags_flow_control_mask, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @set_phy_link_flags_flow_control_enable, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @set_phy_link_flags_flow_control_mask, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @set_phy_link_flags_flow_control_enable, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %6, align 4
  %53 = ashr i32 %52, 8
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, 255
  %56 = load i32, i32* @CVMX_MDIO_PHY_REG_AUTONEG_ADVER, align 4
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @cvmx_mdio_write(i32 %53, i32 %55, i32 %56, i8* %58)
  br label %60

60:                                               ; preds = %28, %4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @set_phy_link_flags_autoneg, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %175

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %175

70:                                               ; preds = %65
  %71 = load i32, i32* %6, align 4
  %72 = ashr i32 %71, 8
  %73 = load i32, i32* %6, align 4
  %74 = and i32 %73, 255
  %75 = load i32, i32* @CVMX_MDIO_PHY_REG_STATUS, align 4
  %76 = call i8* @cvmx_mdio_read(i32 %72, i32 %74, i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 1
  store i8* %76, i8** %77, align 8
  %78 = load i32, i32* %6, align 4
  %79 = ashr i32 %78, 8
  %80 = load i32, i32* %6, align 4
  %81 = and i32 %80, 255
  %82 = load i32, i32* @CVMX_MDIO_PHY_REG_AUTONEG_ADVER, align 4
  %83 = call i8* @cvmx_mdio_read(i32 %79, i32 %81, i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  store i8* %83, i8** %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 6
  store i64 %87, i64* %89, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 5
  store i64 %92, i64* %94, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 4
  store i64 %102, i64* %104, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %6, align 4
  %111 = ashr i32 %110, 8
  %112 = load i32, i32* %6, align 4
  %113 = and i32 %112, 255
  %114 = load i32, i32* @CVMX_MDIO_PHY_REG_AUTONEG_ADVER, align 4
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @cvmx_mdio_write(i32 %111, i32 %113, i32 %114, i8* %116)
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %155

122:                                              ; preds = %70
  %123 = load i32, i32* %6, align 4
  %124 = ashr i32 %123, 8
  %125 = load i32, i32* %6, align 4
  %126 = and i32 %125, 255
  %127 = load i32, i32* @CVMX_MDIO_PHY_REG_EXTENDED_STATUS, align 4
  %128 = call i8* @cvmx_mdio_read(i32 %124, i32 %126, i32 %127)
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  store i8* %128, i8** %129, align 8
  %130 = load i32, i32* %6, align 4
  %131 = ashr i32 %130, 8
  %132 = load i32, i32* %6, align 4
  %133 = and i32 %132, 255
  %134 = load i32, i32* @CVMX_MDIO_PHY_REG_CONTROL_1000, align 4
  %135 = call i8* @cvmx_mdio_read(i32 %131, i32 %133, i32 %134)
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  store i8* %135, i8** %136, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 1
  store i64 %139, i64* %141, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load i32, i32* %6, align 4
  %148 = ashr i32 %147, 8
  %149 = load i32, i32* %6, align 4
  %150 = and i32 %149, 255
  %151 = load i32, i32* @CVMX_MDIO_PHY_REG_CONTROL_1000, align 4
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @cvmx_mdio_write(i32 %148, i32 %150, i32 %151, i8* %153)
  br label %155

155:                                              ; preds = %122, %70
  %156 = load i32, i32* %6, align 4
  %157 = ashr i32 %156, 8
  %158 = load i32, i32* %6, align 4
  %159 = and i32 %158, 255
  %160 = load i32, i32* @CVMX_MDIO_PHY_REG_CONTROL, align 4
  %161 = call i8* @cvmx_mdio_read(i32 %157, i32 %159, i32 %160)
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 0
  store i8* %161, i8** %162, align 8
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 0
  store i32 1, i32* %164, align 8
  %165 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 1
  store i32 1, i32* %166, align 4
  %167 = load i32, i32* %6, align 4
  %168 = ashr i32 %167, 8
  %169 = load i32, i32* %6, align 4
  %170 = and i32 %169, 255
  %171 = load i32, i32* @CVMX_MDIO_PHY_REG_CONTROL, align 4
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 @cvmx_mdio_write(i32 %168, i32 %170, i32 %171, i8* %173)
  br label %374

175:                                              ; preds = %65, %60
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* @set_phy_link_flags_autoneg, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %316

180:                                              ; preds = %175
  %181 = load i32, i32* %6, align 4
  %182 = ashr i32 %181, 8
  %183 = load i32, i32* %6, align 4
  %184 = and i32 %183, 255
  %185 = load i32, i32* @CVMX_MDIO_PHY_REG_STATUS, align 4
  %186 = call i8* @cvmx_mdio_read(i32 %182, i32 %184, i32 %185)
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 1
  store i8* %186, i8** %187, align 8
  %188 = load i32, i32* %6, align 4
  %189 = ashr i32 %188, 8
  %190 = load i32, i32* %6, align 4
  %191 = and i32 %190, 255
  %192 = load i32, i32* @CVMX_MDIO_PHY_REG_AUTONEG_ADVER, align 4
  %193 = call i8* @cvmx_mdio_read(i32 %189, i32 %191, i32 %192)
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  store i8* %193, i8** %194, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 6
  store i64 0, i64* %196, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 5
  store i64 0, i64* %198, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 2
  store i32 0, i32* %200, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 4
  store i64 0, i64* %202, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i32 0, i32 3
  store i32 0, i32* %204, align 4
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %228

209:                                              ; preds = %180
  %210 = load i32, i32* %6, align 4
  %211 = ashr i32 %210, 8
  %212 = load i32, i32* %6, align 4
  %213 = and i32 %212, 255
  %214 = load i32, i32* @CVMX_MDIO_PHY_REG_EXTENDED_STATUS, align 4
  %215 = call i8* @cvmx_mdio_read(i32 %211, i32 %213, i32 %214)
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 0
  store i8* %215, i8** %216, align 8
  %217 = load i32, i32* %6, align 4
  %218 = ashr i32 %217, 8
  %219 = load i32, i32* %6, align 4
  %220 = and i32 %219, 255
  %221 = load i32, i32* @CVMX_MDIO_PHY_REG_CONTROL_1000, align 4
  %222 = call i8* @cvmx_mdio_read(i32 %218, i32 %220, i32 %221)
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  store i8* %222, i8** %223, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 1
  store i64 0, i64* %225, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 0
  store i32 0, i32* %227, align 8
  br label %228

228:                                              ; preds = %209, %180
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  switch i32 %231, label %274 [
    i32 10, label %232
    i32 100, label %246
    i32 1000, label %260
  ]

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %236, i32 0, i32 5
  store i64 %235, i64* %237, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  %242 = xor i1 %241, true
  %243 = zext i1 %242 to i32
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 2
  store i32 %243, i32* %245, align 8
  br label %274

246:                                              ; preds = %228
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %250, i32 0, i32 4
  store i64 %249, i64* %251, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  %256 = xor i1 %255, true
  %257 = zext i1 %256 to i32
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %258, i32 0, i32 3
  store i32 %257, i32* %259, align 4
  br label %274

260:                                              ; preds = %228
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %264, i32 0, i32 1
  store i64 %263, i64* %265, align 8
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  %270 = xor i1 %269, true
  %271 = zext i1 %270 to i32
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %272, i32 0, i32 0
  store i32 %271, i32* %273, align 8
  br label %274

274:                                              ; preds = %228, %260, %246, %232
  %275 = load i32, i32* %6, align 4
  %276 = ashr i32 %275, 8
  %277 = load i32, i32* %6, align 4
  %278 = and i32 %277, 255
  %279 = load i32, i32* @CVMX_MDIO_PHY_REG_AUTONEG_ADVER, align 4
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %281 = load i8*, i8** %280, align 8
  %282 = call i32 @cvmx_mdio_write(i32 %276, i32 %278, i32 %279, i8* %281)
  %283 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %283, i32 0, i32 2
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %296

287:                                              ; preds = %274
  %288 = load i32, i32* %6, align 4
  %289 = ashr i32 %288, 8
  %290 = load i32, i32* %6, align 4
  %291 = and i32 %290, 255
  %292 = load i32, i32* @CVMX_MDIO_PHY_REG_CONTROL_1000, align 4
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %294 = load i8*, i8** %293, align 8
  %295 = call i32 @cvmx_mdio_write(i32 %289, i32 %291, i32 %292, i8* %294)
  br label %296

296:                                              ; preds = %287, %274
  %297 = load i32, i32* %6, align 4
  %298 = ashr i32 %297, 8
  %299 = load i32, i32* %6, align 4
  %300 = and i32 %299, 255
  %301 = load i32, i32* @CVMX_MDIO_PHY_REG_CONTROL, align 4
  %302 = call i8* @cvmx_mdio_read(i32 %298, i32 %300, i32 %301)
  %303 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 0
  store i8* %302, i8** %303, align 8
  %304 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %304, i32 0, i32 0
  store i32 1, i32* %305, align 8
  %306 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %306, i32 0, i32 1
  store i32 1, i32* %307, align 4
  %308 = load i32, i32* %6, align 4
  %309 = ashr i32 %308, 8
  %310 = load i32, i32* %6, align 4
  %311 = and i32 %310, 255
  %312 = load i32, i32* @CVMX_MDIO_PHY_REG_CONTROL, align 4
  %313 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 0
  %314 = load i8*, i8** %313, align 8
  %315 = call i32 @cvmx_mdio_write(i32 %309, i32 %311, i32 %312, i8* %314)
  br label %373

316:                                              ; preds = %175
  %317 = load i32, i32* %6, align 4
  %318 = ashr i32 %317, 8
  %319 = load i32, i32* %6, align 4
  %320 = and i32 %319, 255
  %321 = load i32, i32* @CVMX_MDIO_PHY_REG_CONTROL, align 4
  %322 = call i8* @cvmx_mdio_read(i32 %318, i32 %320, i32 %321)
  %323 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 0
  store i8* %322, i8** %323, align 8
  %324 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %324, i32 0, i32 0
  store i32 0, i32* %325, align 8
  %326 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %326, i32 0, i32 1
  store i32 1, i32* %327, align 4
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %328, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %331, i32 0, i32 4
  store i64 %330, i64* %332, align 8
  %333 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = icmp eq i32 %335, 1000
  br i1 %336, label %337, label %342

337:                                              ; preds = %316
  %338 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %338, i32 0, i32 2
  store i32 1, i32* %339, align 8
  %340 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 1
  %341 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %340, i32 0, i32 3
  store i32 0, i32* %341, align 4
  br label %364

342:                                              ; preds = %316
  %343 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = icmp eq i32 %345, 100
  br i1 %346, label %347, label %352

347:                                              ; preds = %342
  %348 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %348, i32 0, i32 2
  store i32 0, i32* %349, align 8
  %350 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %350, i32 0, i32 3
  store i32 1, i32* %351, align 4
  br label %363

352:                                              ; preds = %342
  %353 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = icmp eq i32 %355, 10
  br i1 %356, label %357, label %362

357:                                              ; preds = %352
  %358 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 1
  %359 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %358, i32 0, i32 2
  store i32 0, i32* %359, align 8
  %360 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 1
  %361 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %360, i32 0, i32 3
  store i32 0, i32* %361, align 4
  br label %362

362:                                              ; preds = %357, %352
  br label %363

363:                                              ; preds = %362, %347
  br label %364

364:                                              ; preds = %363, %337
  %365 = load i32, i32* %6, align 4
  %366 = ashr i32 %365, 8
  %367 = load i32, i32* %6, align 4
  %368 = and i32 %367, 255
  %369 = load i32, i32* @CVMX_MDIO_PHY_REG_CONTROL, align 4
  %370 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 0
  %371 = load i8*, i8** %370, align 8
  %372 = call i32 @cvmx_mdio_write(i32 %366, i32 %368, i32 %369, i8* %371)
  br label %373

373:                                              ; preds = %364, %296
  br label %374

374:                                              ; preds = %373, %155
  ret i32 0
}

declare dso_local i8* @cvmx_mdio_read(i32, i32, i32) #1

declare dso_local i32 @cvmx_mdio_write(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
