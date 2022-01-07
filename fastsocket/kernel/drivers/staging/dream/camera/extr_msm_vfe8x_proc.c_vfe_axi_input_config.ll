; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_axi_input_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_axi_input_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.vfe_cmd_axi_input_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32* }
%struct.VFE_AxiInputCmdType = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i32, i8*, i64, i32, i32, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@ctrl = common dso_local global %struct.TYPE_4__* null, align 8
@VFE_BUS_STRIPE_RD_ADDR_0 = common dso_local global i64 0, align 8
@VFE_BUS_PINGPONG_IRQ_EN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfe_axi_input_config(%struct.vfe_cmd_axi_input_config* %0) #0 {
  %2 = alloca %struct.vfe_cmd_axi_input_config*, align 8
  %3 = alloca %struct.VFE_AxiInputCmdType, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.vfe_cmd_axi_input_config* %0, %struct.vfe_cmd_axi_input_config** %2, align 8
  %8 = load i32, i32* @TRUE, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 8
  %12 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %13 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %22 [
    i32 130, label %15
    i32 129, label %18
    i32 128, label %21
  ]

15:                                               ; preds = %1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 130, i32* %17, align 8
  br label %25

18:                                               ; preds = %1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 129, i32* %20, align 8
  br label %25

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %1, %21
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 128, i32* %24, align 8
  br label %25

25:                                               ; preds = %22, %18, %15
  %26 = call i32 @memset(%struct.VFE_AxiInputCmdType* %3, i32 0, i32 176)
  %27 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %28 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %33 [
    i32 130, label %30
    i32 129, label %31
    i32 128, label %32
  ]

30:                                               ; preds = %25
  store i32 6, i32* %6, align 4
  store i8* inttoptr (i64 13906448 to i8*), i8** %5, align 8
  br label %34

31:                                               ; preds = %25
  store i32 5, i32* %6, align 4
  store i8* inttoptr (i64 799248 to i8*), i8** %5, align 8
  br label %34

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %25, %32
  store i32 8, i32* %6, align 4
  store i8* inttoptr (i64 4132712976 to i8*), i8** %5, align 8
  br label %34

34:                                               ; preds = %33, %31, %30
  %35 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %36 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = srem i32 %37, %38
  %40 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %41 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %39, %42
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %44, 1
  %46 = add nsw i32 %43, %45
  %47 = load i32, i32* %6, align 4
  %48 = sdiv i32 %46, %47
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  store i8* %51, i8** %4, align 8
  %52 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %53 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %52, i32 0, i32 30
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 36
  store i32 %56, i32* %57, align 8
  %58 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %59 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %58, i32 0, i32 30
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 35
  store i32 %62, i32* %63, align 4
  %64 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %65 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %64, i32 0, i32 30
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 34
  store i32 %68, i32* %69, align 8
  %70 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %71 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %70, i32 0, i32 30
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 33
  store i32 %74, i32* %75, align 4
  %76 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %77 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %76, i32 0, i32 28
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 32
  store i32 %78, i32* %79, align 8
  %80 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 31
  store i64 0, i64* %80, align 8
  %81 = load i8*, i8** %4, align 8
  %82 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 30
  store i8* %81, i8** %82, align 8
  %83 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 0
  store i32 1, i32* %83, align 8
  %84 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %85 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %84, i32 0, i32 29
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 29
  store i32 %86, i32* %87, align 4
  %88 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %89 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %6, align 4
  %92 = sub nsw i32 %91, 1
  %93 = add nsw i32 %90, %92
  %94 = load i32, i32* %6, align 4
  %95 = sdiv i32 %93, %94
  %96 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 1
  store i32 %95, i32* %96, align 4
  %97 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %98 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %97, i32 0, i32 28
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 28
  store i32 %99, i32* %100, align 8
  %101 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %102 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %103, 1
  %105 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 2
  store i32 %104, i32* %105, align 8
  %106 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %107 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %106, i32 0, i32 27
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to i8*
  %110 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 27
  store i8* %109, i8** %110, align 8
  %111 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %112 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %111, i32 0, i32 26
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 26
  store i32 %113, i32* %114, align 8
  %115 = load i8*, i8** %5, align 8
  %116 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 25
  store i8* %115, i8** %116, align 8
  %117 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %118 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %117, i32 0, i32 25
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 24
  store i32 %119, i32* %120, align 8
  %121 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %122 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %121, i32 0, i32 24
  %123 = load i32, i32* %122, align 8
  %124 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 23
  store i32 %123, i32* %124, align 4
  %125 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %126 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %125, i32 0, i32 23
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 22
  store i32 %127, i32* %128, align 8
  %129 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %130 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %129, i32 0, i32 22
  %131 = load i32, i32* %130, align 8
  %132 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 21
  store i32 %131, i32* %132, align 4
  %133 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %134 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %133, i32 0, i32 21
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 20
  store i32 %135, i32* %136, align 8
  %137 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %138 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %137, i32 0, i32 20
  %139 = load i32, i32* %138, align 8
  %140 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 19
  store i32 %139, i32* %140, align 4
  %141 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %142 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %141, i32 0, i32 19
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 18
  store i32 %143, i32* %144, align 8
  %145 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %146 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %145, i32 0, i32 18
  %147 = load i32, i32* %146, align 8
  %148 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 17
  store i32 %147, i32* %148, align 4
  %149 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %150 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %149, i32 0, i32 17
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 16
  store i32 %151, i32* %152, align 8
  %153 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %154 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %153, i32 0, i32 16
  %155 = load i32, i32* %154, align 8
  %156 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 15
  store i32 %155, i32* %156, align 4
  %157 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %158 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %157, i32 0, i32 15
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 14
  store i32 %159, i32* %160, align 8
  %161 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %162 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %161, i32 0, i32 14
  %163 = load i32, i32* %162, align 8
  %164 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 13
  store i32 %163, i32* %164, align 4
  %165 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %166 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %165, i32 0, i32 13
  %167 = load i32, i32* %166, align 4
  %168 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 12
  store i32 %167, i32* %168, align 8
  %169 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %170 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %169, i32 0, i32 12
  %171 = load i32, i32* %170, align 8
  %172 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 11
  store i32 %171, i32* %172, align 4
  %173 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %174 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %173, i32 0, i32 11
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 10
  store i32 %175, i32* %176, align 8
  %177 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %178 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %177, i32 0, i32 10
  %179 = load i32, i32* %178, align 8
  %180 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 9
  store i32 %179, i32* %180, align 4
  %181 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %182 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %181, i32 0, i32 9
  %183 = load i32, i32* %182, align 4
  %184 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 8
  store i32 %183, i32* %184, align 8
  %185 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %186 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %185, i32 0, i32 8
  %187 = load i32, i32* %186, align 8
  %188 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 7
  store i32 %187, i32* %188, align 4
  %189 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %190 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %189, i32 0, i32 7
  %191 = load i32, i32* %190, align 4
  %192 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 6
  store i32 %191, i32* %192, align 8
  %193 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %194 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %193, i32 0, i32 6
  %195 = load i32, i32* %194, align 8
  %196 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 5
  store i32 %195, i32* %196, align 4
  %197 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %198 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 4
  store i32 %199, i32* %200, align 8
  %201 = load %struct.vfe_cmd_axi_input_config*, %struct.vfe_cmd_axi_input_config** %2, align 8
  %202 = getelementptr inbounds %struct.vfe_cmd_axi_input_config, %struct.vfe_cmd_axi_input_config* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = getelementptr inbounds %struct.VFE_AxiInputCmdType, %struct.VFE_AxiInputCmdType* %3, i32 0, i32 3
  store i32 %203, i32* %204, align 4
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @VFE_BUS_STRIPE_RD_ADDR_0, align 8
  %209 = add nsw i64 %207, %208
  %210 = bitcast %struct.VFE_AxiInputCmdType* %3 to i8**
  %211 = call i32 @vfe_prog_hw(i64 %209, i8** %210, i32 176)
  store i8* inttoptr (i64 15 to i8*), i8** %7, align 8
  %212 = load i8*, i8** %7, align 8
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @VFE_BUS_PINGPONG_IRQ_EN, align 8
  %217 = add nsw i64 %215, %216
  %218 = call i32 @writel(i8* %212, i64 %217)
  ret void
}

declare dso_local i32 @memset(%struct.VFE_AxiInputCmdType*, i32, i32) #1

declare dso_local i32 @vfe_prog_hw(i64, i8**, i32) #1

declare dso_local i32 @writel(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
