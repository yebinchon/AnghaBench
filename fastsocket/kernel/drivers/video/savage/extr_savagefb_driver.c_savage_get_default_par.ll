; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb_driver.c_savage_get_default_par.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb_driver.c_savage_get_default_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.savagefb_par = type { i64 }
%struct.savage_reg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i8*, i8*, i8*, i8* }

@S3_SAVAGE_MX = common dso_local global i64 0, align 8
@FIFO_CONTROL_REG = common dso_local global i32 0, align 4
@MIU_CONTROL_REG = common dso_local global i32 0, align 4
@STREAMS_TIMEOUT_REG = common dso_local global i32 0, align 4
@MISC_TIMEOUT_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.savagefb_par*, %struct.savage_reg*)* @savage_get_default_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @savage_get_default_par(%struct.savagefb_par* %0, %struct.savage_reg* %1) #0 {
  %3 = alloca %struct.savagefb_par*, align 8
  %4 = alloca %struct.savage_reg*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.savagefb_par* %0, %struct.savagefb_par** %3, align 8
  store %struct.savage_reg* %1, %struct.savage_reg** %4, align 8
  %9 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %10 = call i32 @vga_out16(i32 980, i32 18488, %struct.savagefb_par* %9)
  %11 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %12 = call i32 @vga_out16(i32 980, i32 41017, %struct.savagefb_par* %11)
  %13 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %14 = call i32 @vga_out16(i32 964, i32 1544, %struct.savagefb_par* %13)
  %15 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %16 = call i32 @vga_out8(i32 980, i8 zeroext 102, %struct.savagefb_par* %15)
  %17 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %18 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %17)
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %7, align 1
  %20 = load i8, i8* %7, align 1
  %21 = zext i8 %20 to i32
  %22 = or i32 %21, 128
  %23 = trunc i32 %22 to i8
  %24 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %25 = call i32 @vga_out8(i32 981, i8 zeroext %23, %struct.savagefb_par* %24)
  %26 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %27 = call i32 @vga_out8(i32 980, i8 zeroext 58, %struct.savagefb_par* %26)
  %28 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %29 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %28)
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %5, align 1
  %31 = load i8, i8* %5, align 1
  %32 = zext i8 %31 to i32
  %33 = or i32 %32, 128
  %34 = trunc i32 %33 to i8
  %35 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %36 = call i32 @vga_out8(i32 981, i8 zeroext %34, %struct.savagefb_par* %35)
  %37 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %38 = call i32 @vga_out8(i32 980, i8 zeroext 83, %struct.savagefb_par* %37)
  %39 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %40 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %39)
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %6, align 1
  %42 = load i8, i8* %6, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 127
  %45 = trunc i32 %44 to i8
  %46 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %47 = call i32 @vga_out8(i32 981, i8 zeroext %45, %struct.savagefb_par* %46)
  %48 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %49 = call i32 @vga_out8(i32 980, i8 zeroext 102, %struct.savagefb_par* %48)
  %50 = load i8, i8* %7, align 1
  %51 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %52 = call i32 @vga_out8(i32 981, i8 zeroext %50, %struct.savagefb_par* %51)
  %53 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %54 = call i32 @vga_out8(i32 980, i8 zeroext 58, %struct.savagefb_par* %53)
  %55 = load i8, i8* %5, align 1
  %56 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %57 = call i32 @vga_out8(i32 981, i8 zeroext %55, %struct.savagefb_par* %56)
  %58 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %59 = call i32 @vga_out8(i32 980, i8 zeroext 102, %struct.savagefb_par* %58)
  %60 = load i8, i8* %7, align 1
  %61 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %62 = call i32 @vga_out8(i32 981, i8 zeroext %60, %struct.savagefb_par* %61)
  %63 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %64 = call i32 @vga_out8(i32 980, i8 zeroext 58, %struct.savagefb_par* %63)
  %65 = load i8, i8* %5, align 1
  %66 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %67 = call i32 @vga_out8(i32 981, i8 zeroext %65, %struct.savagefb_par* %66)
  %68 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %69 = call i32 @vga_out8(i32 964, i8 zeroext 8, %struct.savagefb_par* %68)
  %70 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %71 = call i32 @vga_in8(i32 965, %struct.savagefb_par* %70)
  %72 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %73 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %75 = call i32 @vga_out8(i32 965, i8 zeroext 6, %struct.savagefb_par* %74)
  %76 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %77 = call i32 @vga_out8(i32 980, i8 zeroext 49, %struct.savagefb_par* %76)
  %78 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %79 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %78)
  %80 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %81 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %83 = call i32 @vga_out8(i32 980, i8 zeroext 50, %struct.savagefb_par* %82)
  %84 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %85 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %84)
  %86 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %87 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %89 = call i32 @vga_out8(i32 980, i8 zeroext 52, %struct.savagefb_par* %88)
  %90 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %91 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %90)
  %92 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %93 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %95 = call i32 @vga_out8(i32 980, i8 zeroext 54, %struct.savagefb_par* %94)
  %96 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %97 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %96)
  %98 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %99 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 8
  %100 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %101 = call i32 @vga_out8(i32 980, i8 zeroext 58, %struct.savagefb_par* %100)
  %102 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %103 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %102)
  %104 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %105 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 4
  %106 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %107 = call i32 @vga_out8(i32 980, i8 zeroext 64, %struct.savagefb_par* %106)
  %108 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %109 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %108)
  %110 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %111 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %110, i32 0, i32 6
  store i32 %109, i32* %111, align 8
  %112 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %113 = call i32 @vga_out8(i32 980, i8 zeroext 66, %struct.savagefb_par* %112)
  %114 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %115 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %114)
  %116 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %117 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %116, i32 0, i32 7
  store i32 %115, i32* %117, align 4
  %118 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %119 = call i32 @vga_out8(i32 980, i8 zeroext 69, %struct.savagefb_par* %118)
  %120 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %121 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %120)
  %122 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %123 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %122, i32 0, i32 8
  store i32 %121, i32* %123, align 8
  %124 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %125 = call i32 @vga_out8(i32 980, i8 zeroext 80, %struct.savagefb_par* %124)
  %126 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %127 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %126)
  %128 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %129 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %128, i32 0, i32 9
  store i32 %127, i32* %129, align 4
  %130 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %131 = call i32 @vga_out8(i32 980, i8 zeroext 81, %struct.savagefb_par* %130)
  %132 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %133 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %132)
  %134 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %135 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %134, i32 0, i32 10
  store i32 %133, i32* %135, align 8
  %136 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %137 = call i32 @vga_out8(i32 980, i8 zeroext 83, %struct.savagefb_par* %136)
  %138 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %139 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %138)
  %140 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %141 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %140, i32 0, i32 11
  store i32 %139, i32* %141, align 4
  %142 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %143 = call i32 @vga_out8(i32 980, i8 zeroext 88, %struct.savagefb_par* %142)
  %144 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %145 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %144)
  %146 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %147 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %146, i32 0, i32 12
  store i32 %145, i32* %147, align 8
  %148 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %149 = call i32 @vga_out8(i32 980, i8 zeroext 96, %struct.savagefb_par* %148)
  %150 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %151 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %150)
  %152 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %153 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %152, i32 0, i32 13
  store i32 %151, i32* %153, align 4
  %154 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %155 = call i32 @vga_out8(i32 980, i8 zeroext 102, %struct.savagefb_par* %154)
  %156 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %157 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %156)
  %158 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %159 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %158, i32 0, i32 14
  store i32 %157, i32* %159, align 8
  %160 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %161 = call i32 @vga_out8(i32 980, i8 zeroext 103, %struct.savagefb_par* %160)
  %162 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %163 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %162)
  %164 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %165 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %164, i32 0, i32 15
  store i32 %163, i32* %165, align 4
  %166 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %167 = call i32 @vga_out8(i32 980, i8 zeroext 104, %struct.savagefb_par* %166)
  %168 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %169 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %168)
  %170 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %171 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %170, i32 0, i32 16
  store i32 %169, i32* %171, align 8
  %172 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %173 = call i32 @vga_out8(i32 980, i8 zeroext 105, %struct.savagefb_par* %172)
  %174 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %175 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %174)
  %176 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %177 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %176, i32 0, i32 17
  store i32 %175, i32* %177, align 4
  %178 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %179 = call i32 @vga_out8(i32 980, i8 zeroext 111, %struct.savagefb_par* %178)
  %180 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %181 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %180)
  %182 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %183 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %182, i32 0, i32 18
  store i32 %181, i32* %183, align 8
  %184 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %185 = call i32 @vga_out8(i32 980, i8 zeroext 51, %struct.savagefb_par* %184)
  %186 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %187 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %186)
  %188 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %189 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %188, i32 0, i32 19
  store i32 %187, i32* %189, align 4
  %190 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %191 = call i32 @vga_out8(i32 980, i8 zeroext -122, %struct.savagefb_par* %190)
  %192 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %193 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %192)
  %194 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %195 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %194, i32 0, i32 20
  store i32 %193, i32* %195, align 8
  %196 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %197 = call i32 @vga_out8(i32 980, i8 zeroext -120, %struct.savagefb_par* %196)
  %198 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %199 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %198)
  %200 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %201 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %200, i32 0, i32 21
  store i32 %199, i32* %201, align 4
  %202 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %203 = call i32 @vga_out8(i32 980, i8 zeroext -112, %struct.savagefb_par* %202)
  %204 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %205 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %204)
  %206 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %207 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %206, i32 0, i32 22
  store i32 %205, i32* %207, align 8
  %208 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %209 = call i32 @vga_out8(i32 980, i8 zeroext -111, %struct.savagefb_par* %208)
  %210 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %211 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %210)
  %212 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %213 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %212, i32 0, i32 23
  store i32 %211, i32* %213, align 4
  %214 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %215 = call i32 @vga_out8(i32 980, i8 zeroext -80, %struct.savagefb_par* %214)
  %216 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %217 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %216)
  %218 = or i32 %217, 128
  %219 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %220 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %219, i32 0, i32 24
  store i32 %218, i32* %220, align 8
  %221 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %222 = call i32 @vga_out8(i32 980, i8 zeroext 59, %struct.savagefb_par* %221)
  %223 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %224 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %223)
  %225 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %226 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %225, i32 0, i32 25
  store i32 %224, i32* %226, align 4
  %227 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %228 = call i32 @vga_out8(i32 980, i8 zeroext 60, %struct.savagefb_par* %227)
  %229 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %230 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %229)
  %231 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %232 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %231, i32 0, i32 26
  store i32 %230, i32* %232, align 8
  %233 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %234 = call i32 @vga_out8(i32 980, i8 zeroext 67, %struct.savagefb_par* %233)
  %235 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %236 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %235)
  %237 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %238 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %237, i32 0, i32 27
  store i32 %236, i32* %238, align 4
  %239 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %240 = call i32 @vga_out8(i32 980, i8 zeroext 93, %struct.savagefb_par* %239)
  %241 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %242 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %241)
  %243 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %244 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %243, i32 0, i32 28
  store i32 %242, i32* %244, align 8
  %245 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %246 = call i32 @vga_out8(i32 980, i8 zeroext 94, %struct.savagefb_par* %245)
  %247 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %248 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %247)
  %249 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %250 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %249, i32 0, i32 29
  store i32 %248, i32* %250, align 4
  %251 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %252 = call i32 @vga_out8(i32 980, i8 zeroext 101, %struct.savagefb_par* %251)
  %253 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %254 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %253)
  %255 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %256 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %255, i32 0, i32 30
  store i32 %254, i32* %256, align 8
  %257 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %258 = call i32 @vga_out8(i32 964, i8 zeroext 14, %struct.savagefb_par* %257)
  %259 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %260 = call i32 @vga_in8(i32 965, %struct.savagefb_par* %259)
  %261 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %262 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %261, i32 0, i32 31
  store i32 %260, i32* %262, align 4
  %263 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %264 = call i32 @vga_out8(i32 964, i8 zeroext 15, %struct.savagefb_par* %263)
  %265 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %266 = call i32 @vga_in8(i32 965, %struct.savagefb_par* %265)
  %267 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %268 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %267, i32 0, i32 32
  store i32 %266, i32* %268, align 8
  %269 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %270 = call i32 @vga_out8(i32 964, i8 zeroext 16, %struct.savagefb_par* %269)
  %271 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %272 = call i32 @vga_in8(i32 965, %struct.savagefb_par* %271)
  %273 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %274 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %273, i32 0, i32 33
  store i32 %272, i32* %274, align 4
  %275 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %276 = call i32 @vga_out8(i32 964, i8 zeroext 17, %struct.savagefb_par* %275)
  %277 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %278 = call i32 @vga_in8(i32 965, %struct.savagefb_par* %277)
  %279 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %280 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %279, i32 0, i32 34
  store i32 %278, i32* %280, align 8
  %281 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %282 = call i32 @vga_out8(i32 964, i8 zeroext 18, %struct.savagefb_par* %281)
  %283 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %284 = call i32 @vga_in8(i32 965, %struct.savagefb_par* %283)
  %285 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %286 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %285, i32 0, i32 35
  store i32 %284, i32* %286, align 4
  %287 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %288 = call i32 @vga_out8(i32 964, i8 zeroext 19, %struct.savagefb_par* %287)
  %289 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %290 = call i32 @vga_in8(i32 965, %struct.savagefb_par* %289)
  %291 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %292 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %291, i32 0, i32 36
  store i32 %290, i32* %292, align 8
  %293 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %294 = call i32 @vga_out8(i32 964, i8 zeroext 41, %struct.savagefb_par* %293)
  %295 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %296 = call i32 @vga_in8(i32 965, %struct.savagefb_par* %295)
  %297 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %298 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %297, i32 0, i32 37
  store i32 %296, i32* %298, align 4
  %299 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %300 = call i32 @vga_out8(i32 964, i8 zeroext 21, %struct.savagefb_par* %299)
  %301 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %302 = call i32 @vga_in8(i32 965, %struct.savagefb_par* %301)
  %303 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %304 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %303, i32 0, i32 38
  store i32 %302, i32* %304, align 8
  %305 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %306 = call i32 @vga_out8(i32 964, i8 zeroext 48, %struct.savagefb_par* %305)
  %307 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %308 = call i32 @vga_in8(i32 965, %struct.savagefb_par* %307)
  %309 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %310 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %309, i32 0, i32 39
  store i32 %308, i32* %310, align 4
  %311 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %312 = call i32 @vga_out8(i32 964, i8 zeroext 24, %struct.savagefb_par* %311)
  %313 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %314 = call i32 @vga_in8(i32 965, %struct.savagefb_par* %313)
  %315 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %316 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %315, i32 0, i32 40
  store i32 %314, i32* %316, align 8
  %317 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %318 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = load i64, i64* @S3_SAVAGE_MX, align 8
  %321 = icmp eq i64 %319, %320
  br i1 %321, label %322, label %344

322:                                              ; preds = %2
  store i32 0, i32* %8, align 4
  br label %323

323:                                              ; preds = %340, %322
  %324 = load i32, i32* %8, align 4
  %325 = icmp slt i32 %324, 8
  br i1 %325, label %326, label %343

326:                                              ; preds = %323
  %327 = load i32, i32* %8, align 4
  %328 = add nsw i32 84, %327
  %329 = trunc i32 %328 to i8
  %330 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %331 = call i32 @vga_out8(i32 964, i8 zeroext %329, %struct.savagefb_par* %330)
  %332 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %333 = call i32 @vga_in8(i32 965, %struct.savagefb_par* %332)
  %334 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %335 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %334, i32 0, i32 41
  %336 = load i32*, i32** %335, align 8
  %337 = load i32, i32* %8, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %336, i64 %338
  store i32 %333, i32* %339, align 4
  br label %340

340:                                              ; preds = %326
  %341 = load i32, i32* %8, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %8, align 4
  br label %323

343:                                              ; preds = %323
  br label %344

344:                                              ; preds = %343, %2
  %345 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %346 = call i32 @vga_out8(i32 980, i8 zeroext 102, %struct.savagefb_par* %345)
  %347 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %348 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %347)
  %349 = trunc i32 %348 to i8
  store i8 %349, i8* %7, align 1
  %350 = load i8, i8* %7, align 1
  %351 = zext i8 %350 to i32
  %352 = or i32 %351, 128
  %353 = trunc i32 %352 to i8
  %354 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %355 = call i32 @vga_out8(i32 981, i8 zeroext %353, %struct.savagefb_par* %354)
  %356 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %357 = call i32 @vga_out8(i32 980, i8 zeroext 58, %struct.savagefb_par* %356)
  %358 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %359 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %358)
  %360 = trunc i32 %359 to i8
  store i8 %360, i8* %5, align 1
  %361 = load i8, i8* %5, align 1
  %362 = zext i8 %361 to i32
  %363 = or i32 %362, 128
  %364 = trunc i32 %363 to i8
  %365 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %366 = call i32 @vga_out8(i32 981, i8 zeroext %364, %struct.savagefb_par* %365)
  %367 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %368 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = load i64, i64* @S3_SAVAGE_MX, align 8
  %371 = icmp ne i64 %369, %370
  br i1 %371, label %372, label %393

372:                                              ; preds = %344
  %373 = load i32, i32* @FIFO_CONTROL_REG, align 4
  %374 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %375 = call i8* @savage_in32(i32 %373, %struct.savagefb_par* %374)
  %376 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %377 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %376, i32 0, i32 45
  store i8* %375, i8** %377, align 8
  %378 = load i32, i32* @MIU_CONTROL_REG, align 4
  %379 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %380 = call i8* @savage_in32(i32 %378, %struct.savagefb_par* %379)
  %381 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %382 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %381, i32 0, i32 44
  store i8* %380, i8** %382, align 8
  %383 = load i32, i32* @STREAMS_TIMEOUT_REG, align 4
  %384 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %385 = call i8* @savage_in32(i32 %383, %struct.savagefb_par* %384)
  %386 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %387 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %386, i32 0, i32 43
  store i8* %385, i8** %387, align 8
  %388 = load i32, i32* @MISC_TIMEOUT_REG, align 4
  %389 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %390 = call i8* @savage_in32(i32 %388, %struct.savagefb_par* %389)
  %391 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %392 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %391, i32 0, i32 42
  store i8* %390, i8** %392, align 8
  br label %393

393:                                              ; preds = %372, %344
  %394 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %395 = call i32 @vga_out8(i32 980, i8 zeroext 58, %struct.savagefb_par* %394)
  %396 = load i8, i8* %5, align 1
  %397 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %398 = call i32 @vga_out8(i32 981, i8 zeroext %396, %struct.savagefb_par* %397)
  %399 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %400 = call i32 @vga_out8(i32 980, i8 zeroext 102, %struct.savagefb_par* %399)
  %401 = load i8, i8* %7, align 1
  %402 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %403 = call i32 @vga_out8(i32 981, i8 zeroext %401, %struct.savagefb_par* %402)
  ret void
}

declare dso_local i32 @vga_out16(i32, i32, %struct.savagefb_par*) #1

declare dso_local i32 @vga_out8(i32, i8 zeroext, %struct.savagefb_par*) #1

declare dso_local i32 @vga_in8(i32, %struct.savagefb_par*) #1

declare dso_local i8* @savage_in32(i32, %struct.savagefb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
