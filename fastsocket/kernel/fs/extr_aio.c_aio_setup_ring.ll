; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_aio_setup_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_aio_setup_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kioctx = type { i32, i32, %struct.TYPE_2__*, %struct.aio_ring_info }
%struct.TYPE_2__ = type { i32 }
%struct.aio_ring_info = type { i32, i32, i32, i32, i32*, i32* }
%struct.aio_ring = type { i32, i32, i32, i32, i32, i32, i64, i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@AIO_RING_PAGES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"attempting mmap of %lu bytes\0A\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"mmap address: 0x%08lx\0A\00", align 1
@current = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4
@AIO_RING_MAGIC = common dso_local global i32 0, align 4
@AIO_RING_COMPAT_FEATURES = common dso_local global i32 0, align 4
@AIO_RING_INCOMPAT_FEATURES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kioctx*)* @aio_setup_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aio_setup_ring(%struct.kioctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kioctx*, align 8
  %4 = alloca %struct.aio_ring*, align 8
  %5 = alloca %struct.aio_ring_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.kioctx* %0, %struct.kioctx** %3, align 8
  %9 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %10 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %9, i32 0, i32 3
  store %struct.aio_ring_info* %10, %struct.aio_ring_info** %5, align 8
  %11 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %12 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add i32 %14, 2
  store i32 %15, i32* %6, align 4
  store i64 40, i64* %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = mul i64 4, %17
  %19 = load i64, i64* %7, align 8
  %20 = add i64 %19, %18
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @PAGE_SIZE, align 8
  %23 = add i64 %21, %22
  %24 = sub i64 %23, 1
  %25 = load i64, i64* @PAGE_SHIFT, align 8
  %26 = lshr i64 %24, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %192

33:                                               ; preds = %1
  %34 = load i64, i64* @PAGE_SIZE, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %34, %36
  %38 = sub i64 %37, 40
  %39 = udiv i64 %38, 4
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %6, align 4
  %41 = load %struct.aio_ring_info*, %struct.aio_ring_info** %5, align 8
  %42 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.aio_ring_info*, %struct.aio_ring_info** %5, align 8
  %44 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %43, i32 0, i32 5
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.aio_ring_info*, %struct.aio_ring_info** %5, align 8
  %47 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %46, i32 0, i32 4
  store i32* %45, i32** %47, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @AIO_RING_PAGES, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %33
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i32* @kcalloc(i32 %52, i32 8, i32 %53)
  %55 = load %struct.aio_ring_info*, %struct.aio_ring_info** %5, align 8
  %56 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %55, i32 0, i32 4
  store i32* %54, i32** %56, align 8
  %57 = load %struct.aio_ring_info*, %struct.aio_ring_info** %5, align 8
  %58 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %51
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %192

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64, %33
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* @PAGE_SIZE, align 8
  %69 = mul i64 %67, %68
  %70 = trunc i64 %69 to i32
  %71 = load %struct.aio_ring_info*, %struct.aio_ring_info** %5, align 8
  %72 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.aio_ring_info*, %struct.aio_ring_info** %5, align 8
  %74 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %78 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = call i32 @down_write(i32* %80)
  %82 = load %struct.aio_ring_info*, %struct.aio_ring_info** %5, align 8
  %83 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @PROT_READ, align 4
  %86 = load i32, i32* @PROT_WRITE, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @MAP_ANONYMOUS, align 4
  %89 = load i32, i32* @MAP_PRIVATE, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @do_mmap(i32* null, i32 0, i32 %84, i32 %87, i32 %90, i32 0)
  %92 = load %struct.aio_ring_info*, %struct.aio_ring_info** %5, align 8
  %93 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load %struct.aio_ring_info*, %struct.aio_ring_info** %5, align 8
  %95 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i8*
  %99 = call i64 @IS_ERR(i8* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %65
  %102 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %103 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %102, i32 0, i32 2
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = call i32 @up_write(i32* %105)
  %107 = load %struct.aio_ring_info*, %struct.aio_ring_info** %5, align 8
  %108 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %107, i32 0, i32 1
  store i32 0, i32* %108, align 4
  %109 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %110 = call i32 @aio_free_ring(%struct.kioctx* %109)
  %111 = load i32, i32* @EAGAIN, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %192

113:                                              ; preds = %65
  %114 = load %struct.aio_ring_info*, %struct.aio_ring_info** %5, align 8
  %115 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* @current, align 4
  %119 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %120 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %119, i32 0, i32 2
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load %struct.aio_ring_info*, %struct.aio_ring_info** %5, align 8
  %123 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.aio_ring_info*, %struct.aio_ring_info** %5, align 8
  %127 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @get_user_pages(i32 %118, %struct.TYPE_2__* %121, i32 %124, i32 %125, i32 1, i32 0, i32* %128, i32* null)
  %130 = load %struct.aio_ring_info*, %struct.aio_ring_info** %5, align 8
  %131 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  %132 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %133 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %132, i32 0, i32 2
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = call i32 @up_write(i32* %135)
  %137 = load %struct.aio_ring_info*, %struct.aio_ring_info** %5, align 8
  %138 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %139, %140
  %142 = zext i1 %141 to i32
  %143 = call i64 @unlikely(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %113
  %146 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %147 = call i32 @aio_free_ring(%struct.kioctx* %146)
  %148 = load i32, i32* @EAGAIN, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %2, align 4
  br label %192

150:                                              ; preds = %113
  %151 = load %struct.aio_ring_info*, %struct.aio_ring_info** %5, align 8
  %152 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %155 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* %6, align 4
  %157 = load %struct.aio_ring_info*, %struct.aio_ring_info** %5, align 8
  %158 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load %struct.aio_ring_info*, %struct.aio_ring_info** %5, align 8
  %160 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %159, i32 0, i32 4
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @KM_USER0, align 4
  %165 = call %struct.aio_ring* @kmap_atomic(i32 %163, i32 %164)
  store %struct.aio_ring* %165, %struct.aio_ring** %4, align 8
  %166 = load i32, i32* %6, align 4
  %167 = load %struct.aio_ring*, %struct.aio_ring** %4, align 8
  %168 = getelementptr inbounds %struct.aio_ring, %struct.aio_ring* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  %169 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %170 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.aio_ring*, %struct.aio_ring** %4, align 8
  %173 = getelementptr inbounds %struct.aio_ring, %struct.aio_ring* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  %174 = load %struct.aio_ring*, %struct.aio_ring** %4, align 8
  %175 = getelementptr inbounds %struct.aio_ring, %struct.aio_ring* %174, i32 0, i32 6
  store i64 0, i64* %175, align 8
  %176 = load %struct.aio_ring*, %struct.aio_ring** %4, align 8
  %177 = getelementptr inbounds %struct.aio_ring, %struct.aio_ring* %176, i32 0, i32 7
  store i64 0, i64* %177, align 8
  %178 = load i32, i32* @AIO_RING_MAGIC, align 4
  %179 = load %struct.aio_ring*, %struct.aio_ring** %4, align 8
  %180 = getelementptr inbounds %struct.aio_ring, %struct.aio_ring* %179, i32 0, i32 5
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* @AIO_RING_COMPAT_FEATURES, align 4
  %182 = load %struct.aio_ring*, %struct.aio_ring** %4, align 8
  %183 = getelementptr inbounds %struct.aio_ring, %struct.aio_ring* %182, i32 0, i32 4
  store i32 %181, i32* %183, align 8
  %184 = load i32, i32* @AIO_RING_INCOMPAT_FEATURES, align 4
  %185 = load %struct.aio_ring*, %struct.aio_ring** %4, align 8
  %186 = getelementptr inbounds %struct.aio_ring, %struct.aio_ring* %185, i32 0, i32 3
  store i32 %184, i32* %186, align 4
  %187 = load %struct.aio_ring*, %struct.aio_ring** %4, align 8
  %188 = getelementptr inbounds %struct.aio_ring, %struct.aio_ring* %187, i32 0, i32 2
  store i32 40, i32* %188, align 8
  %189 = load %struct.aio_ring*, %struct.aio_ring** %4, align 8
  %190 = load i32, i32* @KM_USER0, align 4
  %191 = call i32 @kunmap_atomic(%struct.aio_ring* %189, i32 %190)
  store i32 0, i32* %2, align 4
  br label %192

192:                                              ; preds = %150, %145, %101, %61, %30
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @do_mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @aio_free_ring(%struct.kioctx*) #1

declare dso_local i32 @get_user_pages(i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.aio_ring* @kmap_atomic(i32, i32) #1

declare dso_local i32 @kunmap_atomic(%struct.aio_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
