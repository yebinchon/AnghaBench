; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_target_submit_cmd_map_sgls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_target_submit_cmd_map_sgls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i32, i64, i64, i64 }
%struct.se_session = type { %struct.se_portal_group* }
%struct.se_portal_group = type { i32 }
%struct.scatterlist = type { i32, i32 }

@TARGET_SCF_UNKNOWN_SIZE = common dso_local global i32 0, align 4
@TARGET_SCF_ACK_KREF = common dso_local global i32 0, align 4
@TARGET_SCF_BIDI_OP = common dso_local global i32 0, align 4
@SCF_BIDI = common dso_local global i32 0, align 4
@SCF_SCSI_DATA_CDB = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_submit_cmd_map_sgls(%struct.se_cmd* %0, %struct.se_session* %1, i8* %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, %struct.scatterlist* %9, i32 %10, %struct.scatterlist* %11, i32 %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca %struct.se_cmd*, align 8
  %16 = alloca %struct.se_session*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.scatterlist*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.scatterlist*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.se_portal_group*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %15, align 8
  store %struct.se_session* %1, %struct.se_session** %16, align 8
  store i8* %2, i8** %17, align 8
  store i8* %3, i8** %18, align 8
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store %struct.scatterlist* %9, %struct.scatterlist** %24, align 8
  store i32 %10, i32* %25, align 4
  store %struct.scatterlist* %11, %struct.scatterlist** %26, align 8
  store i32 %12, i32* %27, align 4
  %32 = load %struct.se_session*, %struct.se_session** %16, align 8
  %33 = getelementptr inbounds %struct.se_session, %struct.se_session* %32, i32 0, i32 0
  %34 = load %struct.se_portal_group*, %struct.se_portal_group** %33, align 8
  store %struct.se_portal_group* %34, %struct.se_portal_group** %28, align 8
  %35 = load %struct.se_portal_group*, %struct.se_portal_group** %28, align 8
  %36 = icmp ne %struct.se_portal_group* %35, null
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.se_cmd*, %struct.se_cmd** %15, align 8
  %41 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %13
  %45 = load %struct.se_cmd*, %struct.se_cmd** %15, align 8
  %46 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %44, %13
  %50 = phi i1 [ true, %13 ], [ %48, %44 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @BUG_ON(i32 %51)
  %53 = call i32 (...) @in_interrupt()
  %54 = call i32 @BUG_ON(i32 %53)
  %55 = load %struct.se_cmd*, %struct.se_cmd** %15, align 8
  %56 = load %struct.se_portal_group*, %struct.se_portal_group** %28, align 8
  %57 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.se_session*, %struct.se_session** %16, align 8
  %60 = load i32, i32* %20, align 4
  %61 = load i32, i32* %22, align 4
  %62 = load i32, i32* %21, align 4
  %63 = load i8*, i8** %18, align 8
  %64 = call i32 @transport_init_se_cmd(%struct.se_cmd* %55, i32 %58, %struct.se_session* %59, i32 %60, i32 %61, i32 %62, i8* %63)
  %65 = load i32, i32* %23, align 4
  %66 = load i32, i32* @TARGET_SCF_UNKNOWN_SIZE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %49
  %70 = load %struct.se_cmd*, %struct.se_cmd** %15, align 8
  %71 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  br label %72

72:                                               ; preds = %69, %49
  %73 = load %struct.se_session*, %struct.se_session** %16, align 8
  %74 = load %struct.se_cmd*, %struct.se_cmd** %15, align 8
  %75 = load i32, i32* %23, align 4
  %76 = load i32, i32* @TARGET_SCF_ACK_KREF, align 4
  %77 = and i32 %75, %76
  %78 = call i32 @target_get_sess_cmd(%struct.se_session* %73, %struct.se_cmd* %74, i32 %77)
  store i32 %78, i32* %30, align 4
  %79 = load i32, i32* %30, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  %82 = load i32, i32* %30, align 4
  store i32 %82, i32* %14, align 4
  br label %182

83:                                               ; preds = %72
  %84 = load i32, i32* %23, align 4
  %85 = load i32, i32* @TARGET_SCF_BIDI_OP, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load i32, i32* @SCF_BIDI, align 4
  %90 = load %struct.se_cmd*, %struct.se_cmd** %15, align 8
  %91 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %88, %83
  %95 = load %struct.se_cmd*, %struct.se_cmd** %15, align 8
  %96 = load i32, i32* %19, align 4
  %97 = call i64 @transport_lookup_cmd_lun(%struct.se_cmd* %95, i32 %96)
  store i64 %97, i64* %29, align 8
  %98 = load i64, i64* %29, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %94
  %101 = load %struct.se_cmd*, %struct.se_cmd** %15, align 8
  %102 = load i64, i64* %29, align 8
  %103 = call i32 @transport_send_check_condition_and_sense(%struct.se_cmd* %101, i64 %102, i32 0)
  %104 = load %struct.se_session*, %struct.se_session** %16, align 8
  %105 = load %struct.se_cmd*, %struct.se_cmd** %15, align 8
  %106 = call i32 @target_put_sess_cmd(%struct.se_session* %104, %struct.se_cmd* %105)
  store i32 0, i32* %14, align 4
  br label %182

107:                                              ; preds = %94
  %108 = load %struct.se_cmd*, %struct.se_cmd** %15, align 8
  %109 = load i8*, i8** %17, align 8
  %110 = call i64 @target_setup_cmd_from_cdb(%struct.se_cmd* %108, i8* %109)
  store i64 %110, i64* %29, align 8
  %111 = load i64, i64* %29, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = load %struct.se_cmd*, %struct.se_cmd** %15, align 8
  %115 = load i64, i64* %29, align 8
  %116 = call i32 @transport_generic_request_failure(%struct.se_cmd* %114, i64 %115)
  store i32 0, i32* %14, align 4
  br label %182

117:                                              ; preds = %107
  %118 = load i32, i32* %25, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %177

120:                                              ; preds = %117
  %121 = load %struct.scatterlist*, %struct.scatterlist** %24, align 8
  %122 = icmp ne %struct.scatterlist* %121, null
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  %125 = call i32 @BUG_ON(i32 %124)
  %126 = load %struct.se_cmd*, %struct.se_cmd** %15, align 8
  %127 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @SCF_SCSI_DATA_CDB, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %163, label %132

132:                                              ; preds = %120
  %133 = load %struct.se_cmd*, %struct.se_cmd** %15, align 8
  %134 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %163

138:                                              ; preds = %132
  store i8* null, i8** %31, align 8
  %139 = load %struct.scatterlist*, %struct.scatterlist** %24, align 8
  %140 = icmp ne %struct.scatterlist* %139, null
  br i1 %140, label %141, label %150

141:                                              ; preds = %138
  %142 = load %struct.scatterlist*, %struct.scatterlist** %24, align 8
  %143 = call i32 @sg_page(%struct.scatterlist* %142)
  %144 = call i8* @kmap(i32 %143)
  %145 = load %struct.scatterlist*, %struct.scatterlist** %24, align 8
  %146 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %144, i64 %148
  store i8* %149, i8** %31, align 8
  br label %150

150:                                              ; preds = %141, %138
  %151 = load i8*, i8** %31, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %162

153:                                              ; preds = %150
  %154 = load i8*, i8** %31, align 8
  %155 = load %struct.scatterlist*, %struct.scatterlist** %24, align 8
  %156 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @memset(i8* %154, i32 0, i32 %157)
  %159 = load %struct.scatterlist*, %struct.scatterlist** %24, align 8
  %160 = call i32 @sg_page(%struct.scatterlist* %159)
  %161 = call i32 @kunmap(i32 %160)
  br label %162

162:                                              ; preds = %153, %150
  br label %163

163:                                              ; preds = %162, %132, %120
  %164 = load %struct.se_cmd*, %struct.se_cmd** %15, align 8
  %165 = load %struct.scatterlist*, %struct.scatterlist** %24, align 8
  %166 = load i32, i32* %25, align 4
  %167 = load %struct.scatterlist*, %struct.scatterlist** %26, align 8
  %168 = load i32, i32* %27, align 4
  %169 = call i64 @transport_generic_map_mem_to_cmd(%struct.se_cmd* %164, %struct.scatterlist* %165, i32 %166, %struct.scatterlist* %167, i32 %168)
  store i64 %169, i64* %29, align 8
  %170 = load i64, i64* %29, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %163
  %173 = load %struct.se_cmd*, %struct.se_cmd** %15, align 8
  %174 = load i64, i64* %29, align 8
  %175 = call i32 @transport_generic_request_failure(%struct.se_cmd* %173, i64 %174)
  store i32 0, i32* %14, align 4
  br label %182

176:                                              ; preds = %163
  br label %177

177:                                              ; preds = %176, %117
  %178 = load %struct.se_cmd*, %struct.se_cmd** %15, align 8
  %179 = call i32 @core_alua_check_nonop_delay(%struct.se_cmd* %178)
  %180 = load %struct.se_cmd*, %struct.se_cmd** %15, align 8
  %181 = call i32 @transport_handle_cdb_direct(%struct.se_cmd* %180)
  store i32 0, i32* %14, align 4
  br label %182

182:                                              ; preds = %177, %172, %113, %100, %81
  %183 = load i32, i32* %14, align 4
  ret i32 %183
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @transport_init_se_cmd(%struct.se_cmd*, i32, %struct.se_session*, i32, i32, i32, i8*) #1

declare dso_local i32 @target_get_sess_cmd(%struct.se_session*, %struct.se_cmd*, i32) #1

declare dso_local i64 @transport_lookup_cmd_lun(%struct.se_cmd*, i32) #1

declare dso_local i32 @transport_send_check_condition_and_sense(%struct.se_cmd*, i64, i32) #1

declare dso_local i32 @target_put_sess_cmd(%struct.se_session*, %struct.se_cmd*) #1

declare dso_local i64 @target_setup_cmd_from_cdb(%struct.se_cmd*, i8*) #1

declare dso_local i32 @transport_generic_request_failure(%struct.se_cmd*, i64) #1

declare dso_local i8* @kmap(i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @kunmap(i32) #1

declare dso_local i64 @transport_generic_map_mem_to_cmd(%struct.se_cmd*, %struct.scatterlist*, i32, %struct.scatterlist*, i32) #1

declare dso_local i32 @core_alua_check_nonop_delay(%struct.se_cmd*) #1

declare dso_local i32 @transport_handle_cdb_direct(%struct.se_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
