; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_write_rc_messagetable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_write_rc_messagetable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bin_messagetable = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.bin_messagetable_item = type { i64, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"BEGIN\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"MC syntax dump\00", align 1
@BIN_MESSAGETABLE_SIZE = common dso_local global i64 0, align 8
@wrtarget = common dso_local global i32 0, align 4
@BIN_MESSAGETABLE_BLOCK_SIZE = common dso_local global i64 0, align 8
@BIN_MESSAGETABLE_ITEM_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"MessageId = 0x%x\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MESSAGE_RESOURCE_UNICODE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"Illegal data\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"END\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32*)* @write_rc_messagetable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_rc_messagetable(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bin_messagetable*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.bin_messagetable_item*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @fprintf(i32* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @write_rc_datablock(i32* %19, i64 %20, i32* %21, i32 0, i32 0, i32 0)
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @fprintf(i32* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 (i32*, i8*, ...) @wr_printcomment(i32* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @BIN_MESSAGETABLE_SIZE, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  br label %155

31:                                               ; preds = %3
  br label %32

32:                                               ; preds = %31
  %33 = load i32*, i32** %6, align 8
  %34 = bitcast i32* %33 to %struct.bin_messagetable*
  store %struct.bin_messagetable* %34, %struct.bin_messagetable** %8, align 8
  %35 = load %struct.bin_messagetable*, %struct.bin_messagetable** %8, align 8
  %36 = getelementptr inbounds %struct.bin_messagetable, %struct.bin_messagetable* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i64 @windres_get_32(i32* @wrtarget, i32 %37, i32 %39)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @BIN_MESSAGETABLE_SIZE, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @BIN_MESSAGETABLE_BLOCK_SIZE, align 8
  %45 = mul i64 %43, %44
  %46 = add i64 %42, %45
  %47 = icmp ult i64 %41, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %32
  store i32 1, i32* %7, align 4
  br label %154

49:                                               ; preds = %32
  store i64 0, i64* %10, align 8
  br label %50

50:                                               ; preds = %150, %49
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %153

54:                                               ; preds = %50
  %55 = load %struct.bin_messagetable*, %struct.bin_messagetable** %8, align 8
  %56 = getelementptr inbounds %struct.bin_messagetable, %struct.bin_messagetable* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @windres_get_32(i32* @wrtarget, i32 %61, i32 4)
  store i64 %62, i64* %11, align 8
  %63 = load %struct.bin_messagetable*, %struct.bin_messagetable** %8, align 8
  %64 = getelementptr inbounds %struct.bin_messagetable, %struct.bin_messagetable* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i64, i64* %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @windres_get_32(i32* @wrtarget, i32 %69, i32 4)
  store i64 %70, i64* %12, align 8
  %71 = load %struct.bin_messagetable*, %struct.bin_messagetable** %8, align 8
  %72 = getelementptr inbounds %struct.bin_messagetable, %struct.bin_messagetable* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i64, i64* %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @windres_get_32(i32* @wrtarget, i32 %77, i32 4)
  store i64 %78, i64* %13, align 8
  br label %79

79:                                               ; preds = %141, %54
  %80 = load i64, i64* %11, align 8
  %81 = load i64, i64* %12, align 8
  %82 = icmp ule i64 %80, %81
  br i1 %82, label %83, label %149

83:                                               ; preds = %79
  %84 = load i64, i64* %13, align 8
  %85 = load i64, i64* @BIN_MESSAGETABLE_ITEM_SIZE, align 8
  %86 = add i64 %84, %85
  %87 = load i64, i64* %5, align 8
  %88 = icmp ugt i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store i32 1, i32* %7, align 4
  br label %149

90:                                               ; preds = %83
  %91 = load i32*, i32** %6, align 8
  %92 = load i64, i64* %13, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = bitcast i32* %93 to %struct.bin_messagetable_item*
  store %struct.bin_messagetable_item* %94, %struct.bin_messagetable_item** %14, align 8
  %95 = load %struct.bin_messagetable_item*, %struct.bin_messagetable_item** %14, align 8
  %96 = getelementptr inbounds %struct.bin_messagetable_item, %struct.bin_messagetable_item* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @windres_get_16(i32* @wrtarget, i32 %97, i32 2)
  store i64 %98, i64* %15, align 8
  %99 = load %struct.bin_messagetable_item*, %struct.bin_messagetable_item** %14, align 8
  %100 = getelementptr inbounds %struct.bin_messagetable_item, %struct.bin_messagetable_item* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @windres_get_16(i32* @wrtarget, i32 %101, i32 2)
  store i64 %102, i64* %16, align 8
  %103 = load i64, i64* %13, align 8
  %104 = load i64, i64* %15, align 8
  %105 = add i64 %103, %104
  %106 = load i64, i64* %5, align 8
  %107 = icmp ugt i64 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %90
  store i32 1, i32* %7, align 4
  br label %149

109:                                              ; preds = %90
  %110 = load i32*, i32** %4, align 8
  %111 = load i64, i64* %11, align 8
  %112 = call i32 (i32*, i8*, ...) @wr_printcomment(i32* %110, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64 %111)
  %113 = load i32*, i32** %4, align 8
  %114 = call i32 (i32*, i8*, ...) @wr_printcomment(i32* %113, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %115 = load i64, i64* %16, align 8
  %116 = load i64, i64* @MESSAGE_RESOURCE_UNICODE, align 8
  %117 = and i64 %115, %116
  %118 = load i64, i64* @MESSAGE_RESOURCE_UNICODE, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %109
  %121 = load i32*, i32** %4, align 8
  %122 = load %struct.bin_messagetable_item*, %struct.bin_messagetable_item** %14, align 8
  %123 = getelementptr inbounds %struct.bin_messagetable_item, %struct.bin_messagetable_item* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to i32*
  %126 = load i64, i64* %15, align 8
  %127 = load i64, i64* @BIN_MESSAGETABLE_ITEM_SIZE, align 8
  %128 = sub i64 %126, %127
  %129 = udiv i64 %128, 2
  %130 = call i32 @unicode_print(i32* %121, i32* %125, i64 %129)
  br label %141

131:                                              ; preds = %109
  %132 = load i32*, i32** %4, align 8
  %133 = load %struct.bin_messagetable_item*, %struct.bin_messagetable_item** %14, align 8
  %134 = getelementptr inbounds %struct.bin_messagetable_item, %struct.bin_messagetable_item* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = inttoptr i64 %135 to i8*
  %137 = load i64, i64* %15, align 8
  %138 = load i64, i64* @BIN_MESSAGETABLE_ITEM_SIZE, align 8
  %139 = sub i64 %137, %138
  %140 = call i32 @ascii_print(i32* %132, i8* %136, i64 %139)
  br label %141

141:                                              ; preds = %131, %120
  %142 = load i32*, i32** %4, align 8
  %143 = call i32 (i32*, i8*, ...) @wr_printcomment(i32* %142, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %144 = load i64, i64* %11, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %11, align 8
  %146 = load i64, i64* %15, align 8
  %147 = load i64, i64* %13, align 8
  %148 = add i64 %147, %146
  store i64 %148, i64* %13, align 8
  br label %79

149:                                              ; preds = %108, %89, %79
  br label %150

150:                                              ; preds = %149
  %151 = load i64, i64* %10, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %10, align 8
  br label %50

153:                                              ; preds = %50
  br label %154

154:                                              ; preds = %153, %48
  br label %155

155:                                              ; preds = %154, %30
  %156 = load i32, i32* %7, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i32*, i32** %4, align 8
  %160 = call i32 (i32*, i8*, ...) @wr_printcomment(i32* %159, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %161

161:                                              ; preds = %158, %155
  %162 = load i32*, i32** %4, align 8
  %163 = call i32 @wr_print_flush(i32* %162)
  %164 = load i32*, i32** %4, align 8
  %165 = call i32 @fprintf(i32* %164, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @write_rc_datablock(i32*, i64, i32*, i32, i32, i32) #1

declare dso_local i32 @wr_printcomment(i32*, i8*, ...) #1

declare dso_local i64 @windres_get_32(i32*, i32, i32) #1

declare dso_local i64 @windres_get_16(i32*, i32, i32) #1

declare dso_local i32 @unicode_print(i32*, i32*, i64) #1

declare dso_local i32 @ascii_print(i32*, i8*, i64) #1

declare dso_local i32 @wr_print_flush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
