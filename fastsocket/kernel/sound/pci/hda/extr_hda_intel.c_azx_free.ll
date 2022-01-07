; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i32, i32, i64, i64, %struct.azx*, i32, i64, %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__, i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.azx*)* @azx_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @azx_free(%struct.azx* %0) #0 {
  %2 = alloca %struct.azx*, align 8
  %3 = alloca i32, align 4
  store %struct.azx* %0, %struct.azx** %2, align 8
  %4 = load %struct.azx*, %struct.azx** %2, align 8
  %5 = call i32 @azx_del_card_list(%struct.azx* %4)
  %6 = load %struct.azx*, %struct.azx** %2, align 8
  %7 = call i32 @azx_notifier_unregister(%struct.azx* %6)
  %8 = load %struct.azx*, %struct.azx** %2, align 8
  %9 = getelementptr inbounds %struct.azx, %struct.azx* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load %struct.azx*, %struct.azx** %2, align 8
  %11 = getelementptr inbounds %struct.azx, %struct.azx* %10, i32 0, i32 16
  %12 = call i32 @complete_all(i32* %11)
  %13 = load %struct.azx*, %struct.azx** %2, align 8
  %14 = call i64 @use_vga_switcheroo(%struct.azx* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %1
  %17 = load %struct.azx*, %struct.azx** %2, align 8
  %18 = getelementptr inbounds %struct.azx, %struct.azx* %17, i32 0, i32 15
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load %struct.azx*, %struct.azx** %2, align 8
  %23 = getelementptr inbounds %struct.azx, %struct.azx* %22, i32 0, i32 14
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.azx*, %struct.azx** %2, align 8
  %28 = getelementptr inbounds %struct.azx, %struct.azx* %27, i32 0, i32 14
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @snd_hda_unlock_devices(i64 %29)
  br label %31

31:                                               ; preds = %26, %21, %16
  %32 = load %struct.azx*, %struct.azx** %2, align 8
  %33 = getelementptr inbounds %struct.azx, %struct.azx* %32, i32 0, i32 13
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.azx*, %struct.azx** %2, align 8
  %38 = getelementptr inbounds %struct.azx, %struct.azx* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @vga_switcheroo_unregister_client(i32 %39)
  br label %41

41:                                               ; preds = %36, %31
  br label %42

42:                                               ; preds = %41, %1
  %43 = load %struct.azx*, %struct.azx** %2, align 8
  %44 = getelementptr inbounds %struct.azx, %struct.azx* %43, i32 0, i32 12
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %71

47:                                               ; preds = %42
  %48 = load %struct.azx*, %struct.azx** %2, align 8
  %49 = call i32 @azx_clear_irq_pending(%struct.azx* %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %65, %47
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.azx*, %struct.azx** %2, align 8
  %53 = getelementptr inbounds %struct.azx, %struct.azx* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %50
  %57 = load %struct.azx*, %struct.azx** %2, align 8
  %58 = load %struct.azx*, %struct.azx** %2, align 8
  %59 = getelementptr inbounds %struct.azx, %struct.azx* %58, i32 0, i32 4
  %60 = load %struct.azx*, %struct.azx** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.azx, %struct.azx* %60, i64 %62
  %64 = call i32 @azx_stream_stop(%struct.azx* %57, %struct.azx* %63)
  br label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %50

68:                                               ; preds = %50
  %69 = load %struct.azx*, %struct.azx** %2, align 8
  %70 = call i32 @azx_stop_chip(%struct.azx* %69)
  br label %71

71:                                               ; preds = %68, %42
  %72 = load %struct.azx*, %struct.azx** %2, align 8
  %73 = getelementptr inbounds %struct.azx, %struct.azx* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp sge i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.azx*, %struct.azx** %2, align 8
  %78 = getelementptr inbounds %struct.azx, %struct.azx* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.azx*, %struct.azx** %2, align 8
  %81 = bitcast %struct.azx* %80 to i8*
  %82 = call i32 @free_irq(i64 %79, i8* %81)
  br label %83

83:                                               ; preds = %76, %71
  %84 = load %struct.azx*, %struct.azx** %2, align 8
  %85 = getelementptr inbounds %struct.azx, %struct.azx* %84, i32 0, i32 11
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.azx*, %struct.azx** %2, align 8
  %90 = getelementptr inbounds %struct.azx, %struct.azx* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @pci_disable_msi(i32 %91)
  br label %93

93:                                               ; preds = %88, %83
  %94 = load %struct.azx*, %struct.azx** %2, align 8
  %95 = getelementptr inbounds %struct.azx, %struct.azx* %94, i32 0, i32 10
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.azx*, %struct.azx** %2, align 8
  %100 = getelementptr inbounds %struct.azx, %struct.azx* %99, i32 0, i32 10
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @iounmap(i64 %101)
  br label %103

103:                                              ; preds = %98, %93
  %104 = load %struct.azx*, %struct.azx** %2, align 8
  %105 = getelementptr inbounds %struct.azx, %struct.azx* %104, i32 0, i32 4
  %106 = load %struct.azx*, %struct.azx** %105, align 8
  %107 = icmp ne %struct.azx* %106, null
  br i1 %107, label %108, label %149

108:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %145, %108
  %110 = load i32, i32* %3, align 4
  %111 = load %struct.azx*, %struct.azx** %2, align 8
  %112 = getelementptr inbounds %struct.azx, %struct.azx* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %148

115:                                              ; preds = %109
  %116 = load %struct.azx*, %struct.azx** %2, align 8
  %117 = getelementptr inbounds %struct.azx, %struct.azx* %116, i32 0, i32 4
  %118 = load %struct.azx*, %struct.azx** %117, align 8
  %119 = load i32, i32* %3, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.azx, %struct.azx* %118, i64 %120
  %122 = getelementptr inbounds %struct.azx, %struct.azx* %121, i32 0, i32 9
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %144

126:                                              ; preds = %115
  %127 = load %struct.azx*, %struct.azx** %2, align 8
  %128 = load %struct.azx*, %struct.azx** %2, align 8
  %129 = getelementptr inbounds %struct.azx, %struct.azx* %128, i32 0, i32 4
  %130 = load %struct.azx*, %struct.azx** %129, align 8
  %131 = load i32, i32* %3, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.azx, %struct.azx* %130, i64 %132
  %134 = getelementptr inbounds %struct.azx, %struct.azx* %133, i32 0, i32 9
  %135 = call i32 @mark_pages_wc(%struct.azx* %127, %struct.TYPE_3__* %134, i32 0)
  %136 = load %struct.azx*, %struct.azx** %2, align 8
  %137 = getelementptr inbounds %struct.azx, %struct.azx* %136, i32 0, i32 4
  %138 = load %struct.azx*, %struct.azx** %137, align 8
  %139 = load i32, i32* %3, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.azx, %struct.azx* %138, i64 %140
  %142 = getelementptr inbounds %struct.azx, %struct.azx* %141, i32 0, i32 9
  %143 = call i32 @snd_dma_free_pages(%struct.TYPE_3__* %142)
  br label %144

144:                                              ; preds = %126, %115
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %3, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %3, align 4
  br label %109

148:                                              ; preds = %109
  br label %149

149:                                              ; preds = %148, %103
  %150 = load %struct.azx*, %struct.azx** %2, align 8
  %151 = getelementptr inbounds %struct.azx, %struct.azx* %150, i32 0, i32 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %149
  %156 = load %struct.azx*, %struct.azx** %2, align 8
  %157 = load %struct.azx*, %struct.azx** %2, align 8
  %158 = getelementptr inbounds %struct.azx, %struct.azx* %157, i32 0, i32 8
  %159 = call i32 @mark_pages_wc(%struct.azx* %156, %struct.TYPE_3__* %158, i32 0)
  %160 = load %struct.azx*, %struct.azx** %2, align 8
  %161 = getelementptr inbounds %struct.azx, %struct.azx* %160, i32 0, i32 8
  %162 = call i32 @snd_dma_free_pages(%struct.TYPE_3__* %161)
  br label %163

163:                                              ; preds = %155, %149
  %164 = load %struct.azx*, %struct.azx** %2, align 8
  %165 = getelementptr inbounds %struct.azx, %struct.azx* %164, i32 0, i32 7
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %163
  %170 = load %struct.azx*, %struct.azx** %2, align 8
  %171 = load %struct.azx*, %struct.azx** %2, align 8
  %172 = getelementptr inbounds %struct.azx, %struct.azx* %171, i32 0, i32 7
  %173 = call i32 @mark_pages_wc(%struct.azx* %170, %struct.TYPE_3__* %172, i32 0)
  %174 = load %struct.azx*, %struct.azx** %2, align 8
  %175 = getelementptr inbounds %struct.azx, %struct.azx* %174, i32 0, i32 7
  %176 = call i32 @snd_dma_free_pages(%struct.TYPE_3__* %175)
  br label %177

177:                                              ; preds = %169, %163
  %178 = load %struct.azx*, %struct.azx** %2, align 8
  %179 = getelementptr inbounds %struct.azx, %struct.azx* %178, i32 0, i32 6
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %177
  %183 = load %struct.azx*, %struct.azx** %2, align 8
  %184 = getelementptr inbounds %struct.azx, %struct.azx* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @pci_release_regions(i32 %185)
  br label %187

187:                                              ; preds = %182, %177
  %188 = load %struct.azx*, %struct.azx** %2, align 8
  %189 = getelementptr inbounds %struct.azx, %struct.azx* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @pci_disable_device(i32 %190)
  %192 = load %struct.azx*, %struct.azx** %2, align 8
  %193 = getelementptr inbounds %struct.azx, %struct.azx* %192, i32 0, i32 4
  %194 = load %struct.azx*, %struct.azx** %193, align 8
  %195 = call i32 @kfree(%struct.azx* %194)
  %196 = load %struct.azx*, %struct.azx** %2, align 8
  %197 = call i32 @kfree(%struct.azx* %196)
  ret i32 0
}

declare dso_local i32 @azx_del_card_list(%struct.azx*) #1

declare dso_local i32 @azx_notifier_unregister(%struct.azx*) #1

declare dso_local i32 @complete_all(i32*) #1

declare dso_local i64 @use_vga_switcheroo(%struct.azx*) #1

declare dso_local i32 @snd_hda_unlock_devices(i64) #1

declare dso_local i32 @vga_switcheroo_unregister_client(i32) #1

declare dso_local i32 @azx_clear_irq_pending(%struct.azx*) #1

declare dso_local i32 @azx_stream_stop(%struct.azx*, %struct.azx*) #1

declare dso_local i32 @azx_stop_chip(%struct.azx*) #1

declare dso_local i32 @free_irq(i64, i8*) #1

declare dso_local i32 @pci_disable_msi(i32) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @mark_pages_wc(%struct.azx*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @snd_dma_free_pages(%struct.TYPE_3__*) #1

declare dso_local i32 @pci_release_regions(i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @kfree(%struct.azx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
