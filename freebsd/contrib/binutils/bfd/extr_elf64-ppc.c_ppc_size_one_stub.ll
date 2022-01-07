; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc_size_one_stub.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc_size_one_stub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_hash_entry = type { i32 }
%struct.ppc_stub_hash_entry = type { i64, i64, i32, %struct.TYPE_32__*, %struct.TYPE_23__*, %struct.TYPE_18__, %struct.TYPE_17__*, %struct.TYPE_26__* }
%struct.TYPE_32__ = type { i32, i32, i32, i32, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32, i64, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.plt_entry* }
%struct.plt_entry = type { i64, %struct.TYPE_27__, %struct.plt_entry* }
%struct.TYPE_27__ = type { i32 }
%struct.bfd_link_info = type { i64 }
%struct.ppc_link_hash_table = type { i64, %struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_19__*, i32, i32, %struct.TYPE_29__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i32, %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_29__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, i32 }
%struct.ppc_branch_hash_entry = type { i64, i32 }

@ppc_stub_plt_call = common dso_local global i64 0, align 8
@PLT_CALL_STUB_SIZE = common dso_local global i32 0, align 4
@ppc_stub_plt_branch = common dso_local global i64 0, align 8
@ppc_stub_long_branch = common dso_local global i64 0, align 8
@ppc_stub_long_branch_r2off = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"can't build branch stub `%s'\00", align 1
@SEC_RELOC = common dso_local global i32 0, align 4
@ppc_stub_plt_branch_r2off = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfd_hash_entry*, i8*)* @ppc_size_one_stub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc_size_one_stub(%struct.bfd_hash_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfd_hash_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ppc_stub_hash_entry*, align 8
  %7 = alloca %struct.bfd_link_info*, align 8
  %8 = alloca %struct.ppc_link_hash_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.plt_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ppc_branch_hash_entry*, align 8
  %14 = alloca i32, align 4
  store %struct.bfd_hash_entry* %0, %struct.bfd_hash_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %4, align 8
  %16 = bitcast %struct.bfd_hash_entry* %15 to %struct.ppc_stub_hash_entry*
  store %struct.ppc_stub_hash_entry* %16, %struct.ppc_stub_hash_entry** %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.bfd_link_info*
  store %struct.bfd_link_info* %18, %struct.bfd_link_info** %7, align 8
  %19 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %20 = call %struct.ppc_link_hash_table* @ppc_hash_table(%struct.bfd_link_info* %19)
  store %struct.ppc_link_hash_table* %20, %struct.ppc_link_hash_table** %8, align 8
  %21 = load %struct.ppc_stub_hash_entry*, %struct.ppc_stub_hash_entry** %6, align 8
  %22 = getelementptr inbounds %struct.ppc_stub_hash_entry, %struct.ppc_stub_hash_entry* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ppc_stub_plt_call, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %116

26:                                               ; preds = %2
  store i32 -1, i32* %9, align 4
  %27 = load %struct.ppc_stub_hash_entry*, %struct.ppc_stub_hash_entry** %6, align 8
  %28 = getelementptr inbounds %struct.ppc_stub_hash_entry, %struct.ppc_stub_hash_entry* %27, i32 0, i32 7
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 0
  %33 = load %struct.plt_entry*, %struct.plt_entry** %32, align 8
  store %struct.plt_entry* %33, %struct.plt_entry** %11, align 8
  br label %34

34:                                               ; preds = %52, %26
  %35 = load %struct.plt_entry*, %struct.plt_entry** %11, align 8
  %36 = icmp ne %struct.plt_entry* %35, null
  br i1 %36, label %37, label %56

37:                                               ; preds = %34
  %38 = load %struct.plt_entry*, %struct.plt_entry** %11, align 8
  %39 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ppc_stub_hash_entry*, %struct.ppc_stub_hash_entry** %6, align 8
  %42 = getelementptr inbounds %struct.ppc_stub_hash_entry, %struct.ppc_stub_hash_entry* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load %struct.plt_entry*, %struct.plt_entry** %11, align 8
  %47 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, -2
  store i32 %50, i32* %9, align 4
  br label %56

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.plt_entry*, %struct.plt_entry** %11, align 8
  %54 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %53, i32 0, i32 2
  %55 = load %struct.plt_entry*, %struct.plt_entry** %54, align 8
  store %struct.plt_entry* %55, %struct.plt_entry** %11, align 8
  br label %34

56:                                               ; preds = %45, %34
  %57 = load i32, i32* %9, align 4
  %58 = icmp sge i32 %57, -2
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 (...) @abort() #3
  unreachable

61:                                               ; preds = %56
  %62 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %63 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %62, i32 0, i32 6
  %64 = load %struct.TYPE_29__*, %struct.TYPE_29__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %68 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %67, i32 0, i32 6
  %69 = load %struct.TYPE_29__*, %struct.TYPE_29__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %66, %73
  %75 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %76 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %75, i32 0, i32 6
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @elf_gp(i32 %81)
  %83 = sub nsw i32 %74, %82
  %84 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %85 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %84, i32 0, i32 1
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %85, align 8
  %87 = load %struct.ppc_stub_hash_entry*, %struct.ppc_stub_hash_entry** %6, align 8
  %88 = getelementptr inbounds %struct.ppc_stub_hash_entry, %struct.ppc_stub_hash_entry* %87, i32 0, i32 4
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %83, %94
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* @PLT_CALL_STUB_SIZE, align 4
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i64 @PPC_HA(i32 %99)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %61
  %103 = load i32, i32* %10, align 4
  %104 = sub nsw i32 %103, 4
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %102, %61
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 16
  %108 = call i64 @PPC_HA(i32 %107)
  %109 = load i32, i32* %9, align 4
  %110 = call i64 @PPC_HA(i32 %109)
  %111 = icmp ne i64 %108, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %105
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 4
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %112, %105
  br label %391

116:                                              ; preds = %2
  store i32 0, i32* %12, align 4
  %117 = load %struct.ppc_stub_hash_entry*, %struct.ppc_stub_hash_entry** %6, align 8
  %118 = getelementptr inbounds %struct.ppc_stub_hash_entry, %struct.ppc_stub_hash_entry* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.ppc_stub_hash_entry*, %struct.ppc_stub_hash_entry** %6, align 8
  %121 = getelementptr inbounds %struct.ppc_stub_hash_entry, %struct.ppc_stub_hash_entry* %120, i32 0, i32 6
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %119, %124
  %126 = load %struct.ppc_stub_hash_entry*, %struct.ppc_stub_hash_entry** %6, align 8
  %127 = getelementptr inbounds %struct.ppc_stub_hash_entry, %struct.ppc_stub_hash_entry* %126, i32 0, i32 6
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_30__*, %struct.TYPE_30__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %125, %132
  store i32 %133, i32* %9, align 4
  %134 = load %struct.ppc_stub_hash_entry*, %struct.ppc_stub_hash_entry** %6, align 8
  %135 = getelementptr inbounds %struct.ppc_stub_hash_entry, %struct.ppc_stub_hash_entry* %134, i32 0, i32 3
  %136 = load %struct.TYPE_32__*, %struct.TYPE_32__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.ppc_stub_hash_entry*, %struct.ppc_stub_hash_entry** %6, align 8
  %140 = getelementptr inbounds %struct.ppc_stub_hash_entry, %struct.ppc_stub_hash_entry* %139, i32 0, i32 3
  %141 = load %struct.TYPE_32__*, %struct.TYPE_32__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %138, %143
  %145 = load %struct.ppc_stub_hash_entry*, %struct.ppc_stub_hash_entry** %6, align 8
  %146 = getelementptr inbounds %struct.ppc_stub_hash_entry, %struct.ppc_stub_hash_entry* %145, i32 0, i32 3
  %147 = load %struct.TYPE_32__*, %struct.TYPE_32__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %147, i32 0, i32 4
  %149 = load %struct.TYPE_31__*, %struct.TYPE_31__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %144, %151
  %153 = load i32, i32* %9, align 4
  %154 = sub nsw i32 %153, %152
  store i32 %154, i32* %9, align 4
  %155 = load %struct.ppc_stub_hash_entry*, %struct.ppc_stub_hash_entry** %6, align 8
  %156 = getelementptr inbounds %struct.ppc_stub_hash_entry, %struct.ppc_stub_hash_entry* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @ppc_stub_plt_branch, align 8
  %159 = icmp sge i64 %157, %158
  br i1 %159, label %160, label %168

160:                                              ; preds = %116
  %161 = load i64, i64* @ppc_stub_long_branch, align 8
  %162 = load i64, i64* @ppc_stub_plt_branch, align 8
  %163 = sub nsw i64 %161, %162
  %164 = load %struct.ppc_stub_hash_entry*, %struct.ppc_stub_hash_entry** %6, align 8
  %165 = getelementptr inbounds %struct.ppc_stub_hash_entry, %struct.ppc_stub_hash_entry* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %166, %163
  store i64 %167, i64* %165, align 8
  br label %168

168:                                              ; preds = %160, %116
  store i32 4, i32* %10, align 4
  %169 = load %struct.ppc_stub_hash_entry*, %struct.ppc_stub_hash_entry** %6, align 8
  %170 = getelementptr inbounds %struct.ppc_stub_hash_entry, %struct.ppc_stub_hash_entry* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @ppc_stub_long_branch_r2off, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %207

174:                                              ; preds = %168
  %175 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %176 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %175, i32 0, i32 1
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %176, align 8
  %178 = load %struct.ppc_stub_hash_entry*, %struct.ppc_stub_hash_entry** %6, align 8
  %179 = getelementptr inbounds %struct.ppc_stub_hash_entry, %struct.ppc_stub_hash_entry* %178, i32 0, i32 6
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %187 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %186, i32 0, i32 1
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %187, align 8
  %189 = load %struct.ppc_stub_hash_entry*, %struct.ppc_stub_hash_entry** %6, align 8
  %190 = getelementptr inbounds %struct.ppc_stub_hash_entry, %struct.ppc_stub_hash_entry* %189, i32 0, i32 4
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = sub nsw i32 %185, %196
  store i32 %197, i32* %12, align 4
  store i32 12, i32* %10, align 4
  %198 = load i32, i32* %12, align 4
  %199 = call i64 @PPC_HA(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %174
  store i32 16, i32* %10, align 4
  br label %202

202:                                              ; preds = %201, %174
  %203 = load i32, i32* %10, align 4
  %204 = sub nsw i32 %203, 4
  %205 = load i32, i32* %9, align 4
  %206 = sub nsw i32 %205, %204
  store i32 %206, i32* %9, align 4
  br label %207

207:                                              ; preds = %202, %168
  %208 = load i32, i32* %9, align 4
  %209 = add nsw i32 %208, 33554432
  %210 = icmp sge i32 %209, 67108864
  br i1 %210, label %211, label %370

211:                                              ; preds = %207
  %212 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %213 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %212, i32 0, i32 5
  %214 = load %struct.ppc_stub_hash_entry*, %struct.ppc_stub_hash_entry** %6, align 8
  %215 = getelementptr inbounds %struct.ppc_stub_hash_entry, %struct.ppc_stub_hash_entry* %214, i32 0, i32 5
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = add nsw i64 %217, 9
  %219 = load i32, i32* @TRUE, align 4
  %220 = load i32, i32* @FALSE, align 4
  %221 = call %struct.ppc_branch_hash_entry* @ppc_branch_hash_lookup(i32* %213, i64 %218, i32 %219, i32 %220)
  store %struct.ppc_branch_hash_entry* %221, %struct.ppc_branch_hash_entry** %13, align 8
  %222 = load %struct.ppc_branch_hash_entry*, %struct.ppc_branch_hash_entry** %13, align 8
  %223 = icmp eq %struct.ppc_branch_hash_entry* %222, null
  br i1 %223, label %224, label %235

224:                                              ; preds = %211
  %225 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %226 = load %struct.ppc_stub_hash_entry*, %struct.ppc_stub_hash_entry** %6, align 8
  %227 = getelementptr inbounds %struct.ppc_stub_hash_entry, %struct.ppc_stub_hash_entry* %226, i32 0, i32 5
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = call i32 @_bfd_error_handler(i32 %225, i64 %229)
  %231 = load i32, i32* @TRUE, align 4
  %232 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %233 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %232, i32 0, i32 4
  store i32 %231, i32* %233, align 8
  %234 = load i32, i32* @FALSE, align 4
  store i32 %234, i32* %3, align 4
  br label %400

235:                                              ; preds = %211
  %236 = load %struct.ppc_branch_hash_entry*, %struct.ppc_branch_hash_entry** %13, align 8
  %237 = getelementptr inbounds %struct.ppc_branch_hash_entry, %struct.ppc_branch_hash_entry* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %240 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %238, %241
  br i1 %242, label %243, label %296

243:                                              ; preds = %235
  %244 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %245 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.ppc_branch_hash_entry*, %struct.ppc_branch_hash_entry** %13, align 8
  %248 = getelementptr inbounds %struct.ppc_branch_hash_entry, %struct.ppc_branch_hash_entry* %247, i32 0, i32 0
  store i64 %246, i64* %248, align 8
  %249 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %250 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %249, i32 0, i32 2
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.ppc_branch_hash_entry*, %struct.ppc_branch_hash_entry** %13, align 8
  %255 = getelementptr inbounds %struct.ppc_branch_hash_entry, %struct.ppc_branch_hash_entry* %254, i32 0, i32 1
  store i32 %253, i32* %255, align 8
  %256 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %257 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %256, i32 0, i32 2
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = add nsw i32 %260, 8
  store i32 %261, i32* %259, align 8
  %262 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %263 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %262, i32 0, i32 3
  %264 = load %struct.TYPE_19__*, %struct.TYPE_19__** %263, align 8
  %265 = icmp ne %struct.TYPE_19__* %264, null
  br i1 %265, label %266, label %275

266:                                              ; preds = %243
  %267 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %268 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %267, i32 0, i32 3
  %269 = load %struct.TYPE_19__*, %struct.TYPE_19__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = sext i32 %271 to i64
  %273 = add i64 %272, 4
  %274 = trunc i64 %273 to i32
  store i32 %274, i32* %270, align 4
  br label %295

275:                                              ; preds = %243
  %276 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %277 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %294

280:                                              ; preds = %275
  %281 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %282 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %281, i32 0, i32 2
  %283 = load %struct.TYPE_21__*, %struct.TYPE_21__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %284, align 4
  %287 = load i32, i32* @SEC_RELOC, align 4
  %288 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %289 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %288, i32 0, i32 2
  %290 = load %struct.TYPE_21__*, %struct.TYPE_21__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %290, i32 0, i32 4
  %292 = load i32, i32* %291, align 8
  %293 = or i32 %292, %287
  store i32 %293, i32* %291, align 8
  br label %294

294:                                              ; preds = %280, %275
  br label %295

295:                                              ; preds = %294, %266
  br label %296

296:                                              ; preds = %295, %235
  %297 = load i64, i64* @ppc_stub_plt_branch, align 8
  %298 = load i64, i64* @ppc_stub_long_branch, align 8
  %299 = sub nsw i64 %297, %298
  %300 = load %struct.ppc_stub_hash_entry*, %struct.ppc_stub_hash_entry** %6, align 8
  %301 = getelementptr inbounds %struct.ppc_stub_hash_entry, %struct.ppc_stub_hash_entry* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = add nsw i64 %302, %299
  store i64 %303, i64* %301, align 8
  %304 = load %struct.ppc_branch_hash_entry*, %struct.ppc_branch_hash_entry** %13, align 8
  %305 = getelementptr inbounds %struct.ppc_branch_hash_entry, %struct.ppc_branch_hash_entry* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %308 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %307, i32 0, i32 2
  %309 = load %struct.TYPE_21__*, %struct.TYPE_21__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = add nsw i32 %306, %311
  %313 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %314 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %313, i32 0, i32 2
  %315 = load %struct.TYPE_21__*, %struct.TYPE_21__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %315, i32 0, i32 3
  %317 = load %struct.TYPE_20__*, %struct.TYPE_20__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = add nsw i32 %312, %319
  %321 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %322 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %321, i32 0, i32 2
  %323 = load %struct.TYPE_21__*, %struct.TYPE_21__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %323, i32 0, i32 3
  %325 = load %struct.TYPE_20__*, %struct.TYPE_20__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @elf_gp(i32 %327)
  %329 = sub nsw i32 %320, %328
  %330 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %331 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %330, i32 0, i32 1
  %332 = load %struct.TYPE_22__*, %struct.TYPE_22__** %331, align 8
  %333 = load %struct.ppc_stub_hash_entry*, %struct.ppc_stub_hash_entry** %6, align 8
  %334 = getelementptr inbounds %struct.ppc_stub_hash_entry, %struct.ppc_stub_hash_entry* %333, i32 0, i32 4
  %335 = load %struct.TYPE_23__*, %struct.TYPE_23__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %332, i64 %337
  %339 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = sub nsw i32 %329, %340
  store i32 %341, i32* %9, align 4
  %342 = load i32, i32* %9, align 4
  store i32 %342, i32* %14, align 4
  %343 = load %struct.ppc_stub_hash_entry*, %struct.ppc_stub_hash_entry** %6, align 8
  %344 = getelementptr inbounds %struct.ppc_stub_hash_entry, %struct.ppc_stub_hash_entry* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = load i64, i64* @ppc_stub_plt_branch_r2off, align 8
  %347 = icmp ne i64 %345, %346
  br i1 %347, label %348, label %354

348:                                              ; preds = %296
  store i32 12, i32* %10, align 4
  %349 = load i32, i32* %14, align 4
  %350 = call i64 @PPC_HA(i32 %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %353

352:                                              ; preds = %348
  store i32 16, i32* %10, align 4
  br label %353

353:                                              ; preds = %352, %348
  br label %369

354:                                              ; preds = %296
  store i32 20, i32* %10, align 4
  %355 = load i32, i32* %14, align 4
  %356 = call i64 @PPC_HA(i32 %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %361

358:                                              ; preds = %354
  %359 = load i32, i32* %10, align 4
  %360 = add nsw i32 %359, 4
  store i32 %360, i32* %10, align 4
  br label %361

361:                                              ; preds = %358, %354
  %362 = load i32, i32* %12, align 4
  %363 = call i64 @PPC_HA(i32 %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %368

365:                                              ; preds = %361
  %366 = load i32, i32* %10, align 4
  %367 = add nsw i32 %366, 4
  store i32 %367, i32* %10, align 4
  br label %368

368:                                              ; preds = %365, %361
  br label %369

369:                                              ; preds = %368, %353
  br label %390

370:                                              ; preds = %207
  %371 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %372 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %389

375:                                              ; preds = %370
  %376 = load %struct.ppc_stub_hash_entry*, %struct.ppc_stub_hash_entry** %6, align 8
  %377 = getelementptr inbounds %struct.ppc_stub_hash_entry, %struct.ppc_stub_hash_entry* %376, i32 0, i32 3
  %378 = load %struct.TYPE_32__*, %struct.TYPE_32__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %378, i32 0, i32 2
  %380 = load i32, i32* %379, align 8
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %379, align 8
  %382 = load i32, i32* @SEC_RELOC, align 4
  %383 = load %struct.ppc_stub_hash_entry*, %struct.ppc_stub_hash_entry** %6, align 8
  %384 = getelementptr inbounds %struct.ppc_stub_hash_entry, %struct.ppc_stub_hash_entry* %383, i32 0, i32 3
  %385 = load %struct.TYPE_32__*, %struct.TYPE_32__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %385, i32 0, i32 3
  %387 = load i32, i32* %386, align 4
  %388 = or i32 %387, %382
  store i32 %388, i32* %386, align 4
  br label %389

389:                                              ; preds = %375, %370
  br label %390

390:                                              ; preds = %389, %369
  br label %391

391:                                              ; preds = %390, %115
  %392 = load i32, i32* %10, align 4
  %393 = load %struct.ppc_stub_hash_entry*, %struct.ppc_stub_hash_entry** %6, align 8
  %394 = getelementptr inbounds %struct.ppc_stub_hash_entry, %struct.ppc_stub_hash_entry* %393, i32 0, i32 3
  %395 = load %struct.TYPE_32__*, %struct.TYPE_32__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = add nsw i32 %397, %392
  store i32 %398, i32* %396, align 8
  %399 = load i32, i32* @TRUE, align 4
  store i32 %399, i32* %3, align 4
  br label %400

400:                                              ; preds = %391, %224
  %401 = load i32, i32* %3, align 4
  ret i32 %401
}

declare dso_local %struct.ppc_link_hash_table* @ppc_hash_table(%struct.bfd_link_info*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @elf_gp(i32) #1

declare dso_local i64 @PPC_HA(i32) #1

declare dso_local %struct.ppc_branch_hash_entry* @ppc_branch_hash_lookup(i32*, i64, i32, i32) #1

declare dso_local i32 @_bfd_error_handler(i32, i64) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
