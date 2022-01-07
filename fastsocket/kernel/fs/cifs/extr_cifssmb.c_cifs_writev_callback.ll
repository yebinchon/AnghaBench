; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_cifs_writev_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_cifs_writev_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mid_q_entry = type { i32, i64, %struct.cifs_writedata* }
%struct.cifs_writedata = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cifs_tcon = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mid_q_entry*)* @cifs_writev_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cifs_writev_callback(%struct.mid_q_entry* %0) #0 {
  %2 = alloca %struct.mid_q_entry*, align 8
  %3 = alloca %struct.cifs_writedata*, align 8
  %4 = alloca %struct.cifs_tcon*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.mid_q_entry* %0, %struct.mid_q_entry** %2, align 8
  %7 = load %struct.mid_q_entry*, %struct.mid_q_entry** %2, align 8
  %8 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %7, i32 0, i32 2
  %9 = load %struct.cifs_writedata*, %struct.cifs_writedata** %8, align 8
  store %struct.cifs_writedata* %9, %struct.cifs_writedata** %3, align 8
  %10 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %11 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.cifs_tcon* @tlink_tcon(i32 %14)
  store %struct.cifs_tcon* %15, %struct.cifs_tcon** %4, align 8
  %16 = load %struct.mid_q_entry*, %struct.mid_q_entry** %2, align 8
  %17 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %6, align 8
  %20 = load %struct.mid_q_entry*, %struct.mid_q_entry** %2, align 8
  %21 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %80 [
    i32 129, label %23
    i32 130, label %75
    i32 128, label %75
  ]

23:                                               ; preds = %1
  %24 = load %struct.mid_q_entry*, %struct.mid_q_entry** %2, align 8
  %25 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %26 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cifs_check_receive(%struct.mid_q_entry* %24, i32 %29, i32 0)
  %31 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %32 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %34 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  br label %85

38:                                               ; preds = %23
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le16_to_cpu(i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = shl i32 %43, 16
  store i32 %44, i32* %5, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le16_to_cpu(i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = add i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %53 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ugt i32 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %38
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, 65535
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %56, %38
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %62 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ult i32 %60, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load i32, i32* @ENOSPC, align 4
  %67 = sub nsw i32 0, %66
  %68 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %69 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  br label %74

70:                                               ; preds = %59
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %73 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %70, %65
  br label %85

75:                                               ; preds = %1, %1
  %76 = load i32, i32* @EAGAIN, align 4
  %77 = sub nsw i32 0, %76
  %78 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %79 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  br label %85

80:                                               ; preds = %1
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  %83 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %84 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %80, %75, %74, %37
  %86 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %87 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %86, i32 0, i32 1
  %88 = call i32 @slow_work_enqueue(i32* %87)
  %89 = load %struct.mid_q_entry*, %struct.mid_q_entry** %2, align 8
  %90 = call i32 @DeleteMidQEntry(%struct.mid_q_entry* %89)
  %91 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %92 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @cifs_add_credits(i32 %95, i32 1)
  ret void
}

declare dso_local %struct.cifs_tcon* @tlink_tcon(i32) #1

declare dso_local i32 @cifs_check_receive(%struct.mid_q_entry*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @slow_work_enqueue(i32*) #1

declare dso_local i32 @DeleteMidQEntry(%struct.mid_q_entry*) #1

declare dso_local i32 @cifs_add_credits(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
