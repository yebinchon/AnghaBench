; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_binfmt_som.c_map_som_binary.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_binfmt_som.c_map_som_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64, i32 }
%struct.file = type { i32 }
%struct.som_exec_auxhdr = type { i32, i32, i32, i32, i32, i32, i32 }

@PROT_READ = common dso_local global i32 0, align 4
@PROT_EXEC = common dso_local global i32 0, align 4
@MAP_FIXED = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_DENYWRITE = common dso_local global i32 0, align 4
@MAP_EXECUTABLE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@PROT_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.som_exec_auxhdr*)* @map_som_binary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_som_binary(%struct.file* %0, %struct.som_exec_auxhdr* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.som_exec_auxhdr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.som_exec_auxhdr* %1, %struct.som_exec_auxhdr** %4, align 8
  %15 = load i32, i32* @PROT_READ, align 4
  %16 = load i32, i32* @PROT_EXEC, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* @MAP_FIXED, align 4
  %19 = load i32, i32* @MAP_PRIVATE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @MAP_DENYWRITE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @MAP_EXECUTABLE, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %13, align 4
  %25 = call i32 (...) @get_fs()
  store i32 %25, i32* %14, align 4
  %26 = call i32 (...) @get_ds()
  %27 = call i32 @set_fs(i32 %26)
  %28 = load %struct.som_exec_auxhdr*, %struct.som_exec_auxhdr** %4, align 8
  %29 = getelementptr inbounds %struct.som_exec_auxhdr, %struct.som_exec_auxhdr* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @SOM_PAGESTART(i32 %30)
  store i64 %31, i64* %5, align 8
  %32 = load %struct.som_exec_auxhdr*, %struct.som_exec_auxhdr** %4, align 8
  %33 = getelementptr inbounds %struct.som_exec_auxhdr, %struct.som_exec_auxhdr* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @SOM_PAGEALIGN(i32 %34)
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i64 %36, i64* %40, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = add i64 %41, %42
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i64 %43, i64* %47, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 6
  %52 = call i32 @down_write(i32* %51)
  %53 = load %struct.file*, %struct.file** %3, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load %struct.som_exec_auxhdr*, %struct.som_exec_auxhdr** %4, align 8
  %59 = getelementptr inbounds %struct.som_exec_auxhdr, %struct.som_exec_auxhdr* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @SOM_PAGESTART(i32 %60)
  %62 = call i32 @do_mmap(%struct.file* %53, i64 %54, i64 %55, i32 %56, i32 %57, i64 %61)
  store i32 %62, i32* %11, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 6
  %67 = call i32 @up_write(i32* %66)
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %2
  %71 = load i32, i32* %11, align 4
  %72 = icmp sgt i32 %71, -1024
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %167

74:                                               ; preds = %70, %2
  %75 = load %struct.som_exec_auxhdr*, %struct.som_exec_auxhdr** %4, align 8
  %76 = getelementptr inbounds %struct.som_exec_auxhdr, %struct.som_exec_auxhdr* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @SOM_PAGESTART(i32 %77)
  store i64 %78, i64* %7, align 8
  %79 = load %struct.som_exec_auxhdr*, %struct.som_exec_auxhdr** %4, align 8
  %80 = getelementptr inbounds %struct.som_exec_auxhdr, %struct.som_exec_auxhdr* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @SOM_PAGEALIGN(i32 %81)
  store i64 %82, i64* %8, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  store i64 %83, i64* %87, align 8
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* %8, align 8
  %90 = add i64 %88, %89
  store i64 %90, i64* %9, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 3
  store i64 %90, i64* %94, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 6
  %99 = call i32 @down_write(i32* %98)
  %100 = load %struct.file*, %struct.file** %3, align 8
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* %8, align 8
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @PROT_WRITE, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* %13, align 4
  %107 = load %struct.som_exec_auxhdr*, %struct.som_exec_auxhdr** %4, align 8
  %108 = getelementptr inbounds %struct.som_exec_auxhdr, %struct.som_exec_auxhdr* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @SOM_PAGESTART(i32 %109)
  %111 = call i32 @do_mmap(%struct.file* %100, i64 %101, i64 %102, i32 %105, i32 %106, i64 %110)
  store i32 %111, i32* %11, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 6
  %116 = call i32 @up_write(i32* %115)
  %117 = load i32, i32* %11, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %74
  %120 = load i32, i32* %11, align 4
  %121 = icmp sgt i32 %120, -1024
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %167

123:                                              ; preds = %119, %74
  %124 = load i64, i64* %9, align 8
  %125 = load %struct.som_exec_auxhdr*, %struct.som_exec_auxhdr** %4, align 8
  %126 = getelementptr inbounds %struct.som_exec_auxhdr, %struct.som_exec_auxhdr* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @SOM_PAGEALIGN(i32 %127)
  %129 = add i64 %124, %128
  store i64 %129, i64* %10, align 8
  %130 = load i64, i64* %10, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 5
  store i64 %130, i64* %134, align 8
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 4
  store i64 %130, i64* %138, align 8
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 6
  %143 = call i32 @down_write(i32* %142)
  %144 = load i64, i64* %9, align 8
  %145 = load i64, i64* %10, align 8
  %146 = load i64, i64* %9, align 8
  %147 = sub i64 %145, %146
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* @PROT_WRITE, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @MAP_FIXED, align 4
  %152 = load i32, i32* @MAP_PRIVATE, align 4
  %153 = or i32 %151, %152
  %154 = call i32 @do_mmap(%struct.file* null, i64 %144, i64 %147, i32 %150, i32 %153, i64 0)
  store i32 %154, i32* %11, align 4
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 6
  %159 = call i32 @up_write(i32* %158)
  %160 = load i32, i32* %11, align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %123
  %163 = load i32, i32* %11, align 4
  %164 = icmp slt i32 %163, -1024
  br i1 %164, label %165, label %166

165:                                              ; preds = %162, %123
  store i32 0, i32* %11, align 4
  br label %166

166:                                              ; preds = %165, %162
  br label %167

167:                                              ; preds = %166, %122, %73
  %168 = load i32, i32* %14, align 4
  %169 = call i32 @set_fs(i32 %168)
  %170 = load i32, i32* %11, align 4
  ret i32 %170
}

declare dso_local i32 @get_fs(...) #1

declare dso_local i32 @set_fs(i32) #1

declare dso_local i32 @get_ds(...) #1

declare dso_local i64 @SOM_PAGESTART(i32) #1

declare dso_local i64 @SOM_PAGEALIGN(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @do_mmap(%struct.file*, i64, i64, i32, i32, i64) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
