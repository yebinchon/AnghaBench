; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_ppc_elf_begin_write_processing.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_ppc_elf_begin_write_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_13__* }
%struct.bfd_link_info = type { %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i64, i32 }

@APUINFO_SECTION_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"corrupt or empty %s section in %B\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"unable to read in %s section from %B\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"corrupt %s section in %B\00", align 1
@APUINFO_LABEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"warning: unable to set size of %s section in %B\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.bfd_link_info*)* @ppc_elf_begin_write_processing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppc_elf_begin_write_processing(%struct.TYPE_13__* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %4, align 8
  store i8* null, i8** %14, align 8
  %17 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %18 = icmp eq %struct.bfd_link_info* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %202

20:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %21 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %22 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %5, align 8
  br label %24

24:                                               ; preds = %42, %20
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = icmp ne %struct.TYPE_13__* %25, null
  br i1 %26, label %27, label %46

27:                                               ; preds = %24
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = load i32, i32* @APUINFO_SECTION_NAME, align 4
  %30 = call %struct.TYPE_14__* @bfd_get_section_by_name(%struct.TYPE_13__* %28, i32 %29)
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %6, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %32 = icmp ne %struct.TYPE_14__* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %8, align 4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %9, align 8
  br label %41

41:                                               ; preds = %33, %27
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  store %struct.TYPE_13__* %45, %struct.TYPE_13__** %5, align 8
  br label %24

46:                                               ; preds = %24
  %47 = load i32, i32* %8, align 4
  %48 = icmp ult i32 %47, 1
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %202

50:                                               ; preds = %46
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %52 = load i32, i32* @APUINFO_SECTION_NAME, align 4
  %53 = call %struct.TYPE_14__* @bfd_get_section_by_name(%struct.TYPE_13__* %51, i32 %52)
  store %struct.TYPE_14__* %53, %struct.TYPE_14__** %6, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %55 = icmp eq %struct.TYPE_14__* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %202

57:                                               ; preds = %50
  %58 = load i64, i64* %9, align 8
  %59 = call i8* @bfd_malloc(i64 %58)
  store i8* %59, i8** %7, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %202

63:                                               ; preds = %57
  store i64 0, i64* %12, align 8
  %64 = call i32 (...) @apuinfo_list_init()
  %65 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %66 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %65, i32 0, i32 0
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  store %struct.TYPE_13__* %67, %struct.TYPE_13__** %5, align 8
  br label %68

68:                                               ; preds = %170, %63
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %70 = icmp ne %struct.TYPE_13__* %69, null
  br i1 %70, label %71, label %174

71:                                               ; preds = %68
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %73 = load i32, i32* @APUINFO_SECTION_NAME, align 4
  %74 = call %struct.TYPE_14__* @bfd_get_section_by_name(%struct.TYPE_13__* %72, i32 %73)
  store %struct.TYPE_14__* %74, %struct.TYPE_14__** %6, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %76 = icmp eq %struct.TYPE_14__* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %170

78:                                               ; preds = %71
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %13, align 8
  %82 = load i64, i64* %13, align 8
  %83 = icmp ult i64 %82, 24
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i8* %85, i8** %14, align 8
  br label %192

86:                                               ; preds = %78
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @SEEK_SET, align 4
  %92 = call i64 @bfd_seek(%struct.TYPE_13__* %87, i32 %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %86
  %95 = load i8*, i8** %7, align 8
  %96 = load i64, i64* %12, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  %98 = load i64, i64* %13, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %100 = call i64 @bfd_bread(i8* %97, i64 %98, %struct.TYPE_13__* %99)
  %101 = load i64, i64* %13, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %94, %86
  %104 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i8* %104, i8** %14, align 8
  br label %192

105:                                              ; preds = %94
  %106 = load i8*, i8** %7, align 8
  %107 = load i64, i64* %12, align 8
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %108, i8** %16, align 8
  %109 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i8* %109, i8** %14, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %111 = load i8*, i8** %16, align 8
  %112 = call i64 @bfd_get_32(%struct.TYPE_13__* %110, i8* %111)
  store i64 %112, i64* %15, align 8
  %113 = load i64, i64* %15, align 8
  %114 = icmp ne i64 %113, 4
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  br label %192

116:                                              ; preds = %105
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %118 = load i8*, i8** %16, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 8
  %120 = call i64 @bfd_get_32(%struct.TYPE_13__* %117, i8* %119)
  store i64 %120, i64* %15, align 8
  %121 = load i64, i64* %15, align 8
  %122 = icmp ne i64 %121, 2
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  br label %192

124:                                              ; preds = %116
  %125 = load i8*, i8** %16, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 12
  %127 = load i32, i32* @APUINFO_LABEL, align 4
  %128 = call i64 @strcmp(i8* %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  br label %192

131:                                              ; preds = %124
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %133 = load i8*, i8** %16, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 4
  %135 = call i64 @bfd_get_32(%struct.TYPE_13__* %132, i8* %134)
  store i64 %135, i64* %15, align 8
  %136 = load i64, i64* %15, align 8
  %137 = add i64 %136, 20
  %138 = load i64, i64* %13, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %131
  br label %192

141:                                              ; preds = %131
  %142 = load i64, i64* %12, align 8
  %143 = load i64, i64* %13, align 8
  %144 = add i64 %142, %143
  %145 = load i64, i64* %9, align 8
  %146 = icmp ugt i64 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  br label %192

148:                                              ; preds = %141
  store i32 0, i32* %10, align 4
  br label %149

149:                                              ; preds = %163, %148
  %150 = load i32, i32* %10, align 4
  %151 = zext i32 %150 to i64
  %152 = load i64, i64* %15, align 8
  %153 = icmp ult i64 %151, %152
  br i1 %153, label %154, label %166

154:                                              ; preds = %149
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %156 = load i8*, i8** %16, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 20
  %158 = load i32, i32* %10, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = call i64 @bfd_get_32(%struct.TYPE_13__* %155, i8* %160)
  %162 = call i32 @apuinfo_list_add(i64 %161)
  br label %163

163:                                              ; preds = %154
  %164 = load i32, i32* %10, align 4
  %165 = add i32 %164, 4
  store i32 %165, i32* %10, align 4
  br label %149

166:                                              ; preds = %149
  %167 = load i64, i64* %13, align 8
  %168 = load i64, i64* %12, align 8
  %169 = add i64 %168, %167
  store i64 %169, i64* %12, align 8
  br label %170

170:                                              ; preds = %166, %77
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %172, align 8
  store %struct.TYPE_13__* %173, %struct.TYPE_13__** %5, align 8
  br label %68

174:                                              ; preds = %68
  store i8* null, i8** %14, align 8
  %175 = call i32 (...) @apuinfo_list_length()
  store i32 %175, i32* %11, align 4
  %176 = load i32, i32* %11, align 4
  %177 = mul i32 %176, 4
  %178 = add i32 20, %177
  %179 = zext i32 %178 to i64
  store i64 %179, i64* %9, align 8
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %181 = load i32, i32* @APUINFO_SECTION_NAME, align 4
  %182 = call %struct.TYPE_14__* @bfd_get_section_by_name(%struct.TYPE_13__* %180, i32 %181)
  store %struct.TYPE_14__* %182, %struct.TYPE_14__** %6, align 8
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %185 = load i64, i64* %9, align 8
  %186 = call i32 @bfd_set_section_size(%struct.TYPE_13__* %183, %struct.TYPE_14__* %184, i64 %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %174
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_13__* %189, %struct.TYPE_13__** %5, align 8
  %190 = call i8* @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  store i8* %190, i8** %14, align 8
  br label %191

191:                                              ; preds = %188, %174
  br label %192

192:                                              ; preds = %191, %147, %140, %130, %123, %115, %103, %84
  %193 = load i8*, i8** %7, align 8
  %194 = call i32 @free(i8* %193)
  %195 = load i8*, i8** %14, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %197, label %202

197:                                              ; preds = %192
  %198 = load i8*, i8** %14, align 8
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %200 = load i32, i32* @APUINFO_SECTION_NAME, align 4
  %201 = call i32 @_bfd_error_handler(i8* %198, %struct.TYPE_13__* %199, i32 %200)
  br label %202

202:                                              ; preds = %19, %49, %56, %62, %197, %192
  ret void
}

declare dso_local %struct.TYPE_14__* @bfd_get_section_by_name(%struct.TYPE_13__*, i32) #1

declare dso_local i8* @bfd_malloc(i64) #1

declare dso_local i32 @apuinfo_list_init(...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i64 @bfd_seek(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @bfd_bread(i8*, i64, %struct.TYPE_13__*) #1

declare dso_local i64 @bfd_get_32(%struct.TYPE_13__*, i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @apuinfo_list_add(i64) #1

declare dso_local i32 @apuinfo_list_length(...) #1

declare dso_local i32 @bfd_set_section_size(%struct.TYPE_13__*, %struct.TYPE_14__*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @_bfd_error_handler(i8*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
