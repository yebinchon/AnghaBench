; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page-writeback.c_balance_dirty_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page-writeback.c_balance_dirty_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.backing_dev_info* }
%struct.backing_dev_info = type { i32, i32 }
%struct.writeback_control = type { i64, i32, i32*, i32 }

@WB_SYNC_NONE = common dso_local global i32 0, align 4
@NR_FILE_DIRTY = common dso_local global i32 0, align 4
@NR_UNSTABLE_NFS = common dso_local global i32 0, align 4
@NR_WRITEBACK = common dso_local global i32 0, align 4
@BDI_RECLAIMABLE = common dso_local global i32 0, align 4
@BDI_WRITEBACK = common dso_local global i32 0, align 4
@TASK_KILLABLE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@laptop_mode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.address_space*, i64)* @balance_dirty_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @balance_dirty_pages(%struct.address_space* %0, i64 %1) #0 {
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.backing_dev_info*, align 8
  %15 = alloca %struct.writeback_control, align 8
  store %struct.address_space* %0, %struct.address_space** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %12, align 8
  store i64 1, i64* %13, align 8
  %16 = load %struct.address_space*, %struct.address_space** %3, align 8
  %17 = getelementptr inbounds %struct.address_space, %struct.address_space* %16, i32 0, i32 0
  %18 = load %struct.backing_dev_info*, %struct.backing_dev_info** %17, align 8
  store %struct.backing_dev_info* %18, %struct.backing_dev_info** %14, align 8
  br label %19

19:                                               ; preds = %145, %2
  %20 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %15, i32 0, i32 0
  %21 = load i64, i64* %4, align 8
  store i64 %21, i64* %20, align 8
  %22 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %15, i32 0, i32 1
  store i32 1, i32* %22, align 8
  %23 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %15, i32 0, i32 2
  store i32* null, i32** %23, align 8
  %24 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %15, i32 0, i32 3
  %25 = load i32, i32* @WB_SYNC_NONE, align 4
  store i32 %25, i32* %24, align 8
  %26 = load %struct.backing_dev_info*, %struct.backing_dev_info** %14, align 8
  %27 = call i32 @get_dirty_limits(i64* %9, i64* %10, i64* %11, %struct.backing_dev_info* %26)
  %28 = load i32, i32* @NR_FILE_DIRTY, align 4
  %29 = call i64 @global_page_state(i32 %28)
  %30 = load i32, i32* @NR_UNSTABLE_NFS, align 4
  %31 = call i64 @global_page_state(i32 %30)
  %32 = add i64 %29, %31
  store i64 %32, i64* %5, align 8
  %33 = load i32, i32* @NR_WRITEBACK, align 4
  %34 = call i64 @global_page_state(i32 %33)
  store i64 %34, i64* %7, align 8
  %35 = load %struct.backing_dev_info*, %struct.backing_dev_info** %14, align 8
  %36 = load i32, i32* @BDI_RECLAIMABLE, align 4
  %37 = call i64 @bdi_stat(%struct.backing_dev_info* %35, i32 %36)
  store i64 %37, i64* %6, align 8
  %38 = load %struct.backing_dev_info*, %struct.backing_dev_info** %14, align 8
  %39 = load i32, i32* @BDI_WRITEBACK, align 4
  %40 = call i64 @bdi_stat(%struct.backing_dev_info* %38, i32 %39)
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %8, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i64, i64* %11, align 8
  %45 = icmp ule i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %19
  br label %146

47:                                               ; preds = %19
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* %7, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %51, %52
  %54 = udiv i64 %53, 2
  %55 = icmp ult i64 %50, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %146

57:                                               ; preds = %47
  %58 = load %struct.backing_dev_info*, %struct.backing_dev_info** %14, align 8
  %59 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load %struct.backing_dev_info*, %struct.backing_dev_info** %14, align 8
  %64 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %63, i32 0, i32 0
  store i32 1, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %57
  %66 = load %struct.backing_dev_info*, %struct.backing_dev_info** %14, align 8
  %67 = call i32 @trace_wbc_balance_dirty_start(%struct.writeback_control* %15, %struct.backing_dev_info* %66)
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* %11, align 8
  %70 = icmp ugt i64 %68, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %65
  %72 = load %struct.backing_dev_info*, %struct.backing_dev_info** %14, align 8
  %73 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %72, i32 0, i32 1
  %74 = call i32 @writeback_inodes_wb(i32* %73, %struct.writeback_control* %15)
  %75 = load i64, i64* %4, align 8
  %76 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %15, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = sub i64 %75, %77
  %79 = load i64, i64* %12, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %12, align 8
  %81 = load %struct.backing_dev_info*, %struct.backing_dev_info** %14, align 8
  %82 = call i32 @trace_wbc_balance_dirty_written(%struct.writeback_control* %15, %struct.backing_dev_info* %81)
  %83 = load %struct.backing_dev_info*, %struct.backing_dev_info** %14, align 8
  %84 = call i32 @get_dirty_limits(i64* %9, i64* %10, i64* %11, %struct.backing_dev_info* %83)
  br label %85

85:                                               ; preds = %71, %65
  %86 = load i64, i64* %11, align 8
  %87 = load %struct.backing_dev_info*, %struct.backing_dev_info** %14, align 8
  %88 = call i32 @bdi_stat_error(%struct.backing_dev_info* %87)
  %89 = mul nsw i32 2, %88
  %90 = sext i32 %89 to i64
  %91 = icmp ult i64 %86, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %85
  %93 = load %struct.backing_dev_info*, %struct.backing_dev_info** %14, align 8
  %94 = load i32, i32* @BDI_RECLAIMABLE, align 4
  %95 = call i64 @bdi_stat_sum(%struct.backing_dev_info* %93, i32 %94)
  store i64 %95, i64* %6, align 8
  %96 = load %struct.backing_dev_info*, %struct.backing_dev_info** %14, align 8
  %97 = load i32, i32* @BDI_WRITEBACK, align 4
  %98 = call i64 @bdi_stat_sum(%struct.backing_dev_info* %96, i32 %97)
  store i64 %98, i64* %8, align 8
  br label %110

99:                                               ; preds = %85
  %100 = load i64, i64* %6, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = load %struct.backing_dev_info*, %struct.backing_dev_info** %14, align 8
  %104 = load i32, i32* @BDI_RECLAIMABLE, align 4
  %105 = call i64 @bdi_stat(%struct.backing_dev_info* %103, i32 %104)
  store i64 %105, i64* %6, align 8
  %106 = load %struct.backing_dev_info*, %struct.backing_dev_info** %14, align 8
  %107 = load i32, i32* @BDI_WRITEBACK, align 4
  %108 = call i64 @bdi_stat(%struct.backing_dev_info* %106, i32 %107)
  store i64 %108, i64* %8, align 8
  br label %109

109:                                              ; preds = %102, %99
  br label %110

110:                                              ; preds = %109, %92
  %111 = load i64, i64* %6, align 8
  %112 = load i64, i64* %8, align 8
  %113 = add nsw i64 %111, %112
  %114 = load i64, i64* %11, align 8
  %115 = icmp ule i64 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %146

117:                                              ; preds = %110
  %118 = load i64, i64* %12, align 8
  %119 = load i64, i64* %4, align 8
  %120 = icmp uge i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  br label %146

122:                                              ; preds = %117
  %123 = load %struct.backing_dev_info*, %struct.backing_dev_info** %14, align 8
  %124 = call i32 @trace_wbc_balance_dirty_wait(%struct.writeback_control* %15, %struct.backing_dev_info* %123)
  %125 = load i32, i32* @TASK_KILLABLE, align 4
  %126 = call i32 @__set_current_state(i32 %125)
  %127 = load i64, i64* %13, align 8
  %128 = call i32 @io_schedule_timeout(i64 %127)
  %129 = load i64, i64* %13, align 8
  %130 = shl i64 %129, 1
  store i64 %130, i64* %13, align 8
  %131 = load i64, i64* %13, align 8
  %132 = load i32, i32* @HZ, align 4
  %133 = sdiv i32 %132, 10
  %134 = sext i32 %133 to i64
  %135 = icmp ugt i64 %131, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %122
  %137 = load i32, i32* @HZ, align 4
  %138 = sdiv i32 %137, 10
  %139 = sext i32 %138 to i64
  store i64 %139, i64* %13, align 8
  br label %140

140:                                              ; preds = %136, %122
  %141 = load i32, i32* @current, align 4
  %142 = call i64 @fatal_signal_pending(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  br label %146

145:                                              ; preds = %140
  br label %19

146:                                              ; preds = %144, %121, %116, %56, %46
  %147 = load i64, i64* %12, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i64, i64* %12, align 8
  %151 = call i32 @trace_mm_balancedirty_writeout(i64 %150)
  br label %152

152:                                              ; preds = %149, %146
  %153 = load i64, i64* %6, align 8
  %154 = load i64, i64* %8, align 8
  %155 = add nsw i64 %153, %154
  %156 = load i64, i64* %11, align 8
  %157 = icmp ult i64 %155, %156
  br i1 %157, label %158, label %166

158:                                              ; preds = %152
  %159 = load %struct.backing_dev_info*, %struct.backing_dev_info** %14, align 8
  %160 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load %struct.backing_dev_info*, %struct.backing_dev_info** %14, align 8
  %165 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %164, i32 0, i32 0
  store i32 0, i32* %165, align 4
  br label %166

166:                                              ; preds = %163, %158, %152
  %167 = load %struct.backing_dev_info*, %struct.backing_dev_info** %14, align 8
  %168 = call i64 @writeback_in_progress(%struct.backing_dev_info* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  br label %191

171:                                              ; preds = %166
  %172 = load i64, i64* @laptop_mode, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i64, i64* %12, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %188, label %177

177:                                              ; preds = %174, %171
  %178 = load i64, i64* @laptop_mode, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %191, label %180

180:                                              ; preds = %177
  %181 = load i32, i32* @NR_FILE_DIRTY, align 4
  %182 = call i64 @global_page_state(i32 %181)
  %183 = load i32, i32* @NR_UNSTABLE_NFS, align 4
  %184 = call i64 @global_page_state(i32 %183)
  %185 = add i64 %182, %184
  %186 = load i64, i64* %9, align 8
  %187 = icmp ugt i64 %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %180, %174
  %189 = load %struct.backing_dev_info*, %struct.backing_dev_info** %14, align 8
  %190 = call i32 @bdi_start_background_writeback(%struct.backing_dev_info* %189)
  br label %191

191:                                              ; preds = %170, %188, %180, %177
  ret void
}

declare dso_local i32 @get_dirty_limits(i64*, i64*, i64*, %struct.backing_dev_info*) #1

declare dso_local i64 @global_page_state(i32) #1

declare dso_local i64 @bdi_stat(%struct.backing_dev_info*, i32) #1

declare dso_local i32 @trace_wbc_balance_dirty_start(%struct.writeback_control*, %struct.backing_dev_info*) #1

declare dso_local i32 @writeback_inodes_wb(i32*, %struct.writeback_control*) #1

declare dso_local i32 @trace_wbc_balance_dirty_written(%struct.writeback_control*, %struct.backing_dev_info*) #1

declare dso_local i32 @bdi_stat_error(%struct.backing_dev_info*) #1

declare dso_local i64 @bdi_stat_sum(%struct.backing_dev_info*, i32) #1

declare dso_local i32 @trace_wbc_balance_dirty_wait(%struct.writeback_control*, %struct.backing_dev_info*) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @io_schedule_timeout(i64) #1

declare dso_local i64 @fatal_signal_pending(i32) #1

declare dso_local i32 @trace_mm_balancedirty_writeout(i64) #1

declare dso_local i64 @writeback_in_progress(%struct.backing_dev_info*) #1

declare dso_local i32 @bdi_start_background_writeback(%struct.backing_dev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
